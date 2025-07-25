class QuestionsController < ApplicationController
  before_action :set_question, only: %w[show destroy save_booking]

  def index
    @questions = Question.all
  end

  def show
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    @question.user = current_user

    if @question.save
      ai_response = get_ai_recommendation(@question)
      recommended_restaurant = find_restaurant_from_response(ai_response)

      @question.update!(
        ai_reasoning: ai_response,
        recommended_restaurant_id: recommended_restaurant&.id
      )

      redirect_to @question, notice: 'Recommendation Ready.'
    else
      render :new
    end
  end

  def destroy
    @question.destroy
    redirect_to questions_url, notice: 'Question was successfully destroyed.'
  end

  def save_booking
    Booking.create!(
      user: current_user,
      restaurant: @question.restaurant
    )

    redirect_to restaurant_path(@question.restaurant), notice: "Booking saved!"
  end

  private

  def set_question
    @question = Question.find(params[:id])
  end

  def question_params
    params.require(:question).permit(
      :price_range,
      :number_of_people,
      :current_mood,
      :dietary_restrictions,
      :cuisine_type
    )
  end

  def get_ai_recommendation(question)
    client = OpenAI::Client.new
    restaurants = Restaurant.all.map do |r|
      {
        name: r.name,
        cuisine_type: r.cuisine_type,
        price_range: r.price_range,
        mood: r.mood,
        dietary_restrictions: r.dietary_restrictions
      }
    end
    prompt = <<~PROMPT
      Based only on this list of restaurants: #{restaurants.to_json},
      and the user's preferences: #{question.preference_data.to_json},
      recommend the one restaurant from the list that best matches the user.
      Only choose from the list — do not make up a restaurant.
      Format your response like this:

      Respond in this exact format:
      Restaurant Name: [Name] – [Reason why it was chosen]

      Example:
      Restaurant Name: El Burro – because it fits the user's casual mood and offers vegetarian options.

      Now choose just one.
    PROMPT

    puts "\n========= GPT PROMPT ========="
    puts prompt
    puts "==============================\n"

    response = client.chat(
      parameters: {
        model: "gpt-4o",
        messages: [{ role: "user", content: prompt }],
        temperature: 0.7
      }
    )
    response.dig("choices", 0, "message", "content")
  end

  def find_restaurant_from_response(response)
    name = response.match(/Restaurant Name: (.+?)\s+[–-]/)&.captures&.first
    puts "Matched restaurant name from GPT: #{name}"

    name ||= Restaurant.all.find { |r| response.include?(r.name) }&.name
    puts "Fallback match found: #{name}" if name.nil?

    Restaurant.find_by(name: name)
  end
end
