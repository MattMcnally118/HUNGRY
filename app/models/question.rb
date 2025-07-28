class Question < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant, class_name: "Restaurant", foreign_key: :recommended_restaurant_id, optional: true
  attr_accessor :price_range, :number_of_people, :current_mood, :dietary_restrictions, :cuisine_type

  has_neighbors :embedding
  after_create :generate_embedding!
  before_validation :preferences

  private

  def generate_embedding!
    client = OpenAI::Client.new

    # Build the text safely, skipping or defaulting nil values
    text = [
      cuisine_type.present? ? "I want a #{cuisine_type} restaurant" : nil,
      number_of_people.present? ? "that fits #{number_of_people} people" : nil,
      price_range.present? ? "with a #{price_range} price range" : nil,
      current_mood.present? ? "I'm currently feeling #{current_mood}" : nil,
      dietary_restrictions.present? ? "I prefer #{Array(dietary_restrictions).join(', ')} food" : nil
    ].compact.join(". ")

    response = client.embeddings(
      parameters: {
        model: "text-embedding-3-small",
        input: text
      }
    )

    embedding_vector = response.dig("data", 0, "embedding")
    update!(embedding: embedding_vector)
  end

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
