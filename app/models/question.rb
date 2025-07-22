class Question < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant
  attr_accessor :budget, :number_of_people, :current_mood, :dietary_restrictions, :cuisine_type

  before_save :preferences

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
