class QuestionsController < ApplicationController
  before_action :set_question, only: %w[show destroy]

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
    if @question.save
      redirect_to @question, notice: 'Question was successfully created.'
    else
      render :new
    end
  end

  def destroy
    @question.destroy
    redirect_to questions_url, notice: 'Question was successfully destroyed.'
  end

  private

  def set_question
    @question = Question.find(params[:id])
  end

  def question_params
    params.require(:question).permit(
      :budget,
      :number_of_people,
      :current_mood,
      :dietary_restrictions,
      :cuisine_type,
      :ai_reasoning,
      :user_id,
      :recommended_restaurant_id
    )
  end
end
