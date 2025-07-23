class Question < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant
  attr_accessor :budget, :number_of_people, :current_mood, :dietary_restrictions, :cuisine_type

  before_save :preferences

  # client = OpenAI::Client.new
  # chatgpt_response = client.chat(parameters: {
  #   model: "gpt-4o-mini",
  #   input: [{ role: "user", content: "Reccomend one restaurant from #{@restaurants.all} that suits the responses best from #{@question.preferences}. Return only the instance of the restaurant model chosen'."}]
  # })
  # @content = chatgpt_response["choices"][0]["message"]["content"]

  private

  def preferences
    self.preference_data = {
      budget: budget,
      number_of_people: number_of_people,
      current_mood: current_mood,
      dietary_restrictions: dietary_restrictions,
      cuisine_type: cuisine_type
    }
  end
end
