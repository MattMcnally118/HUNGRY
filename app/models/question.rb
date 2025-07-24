class Question < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant, foreign_key: :recommended_restaurant_id, optional: true
  attr_accessor :price_range, :number_of_people, :current_mood, :dietary_restrictions, :cuisine_type

  before_validation :preferences

  private

  def preferences
    self.preference_data = {
      price_range: price_range,
      number_of_people: number_of_people,
      current_mood: current_mood,
      dietary_restrictions: dietary_restrictions,
      cuisine_type: cuisine_type
    }
  end
end
