class Restaurant < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  has_neighbors :embedding
  after_create :generate_embedding!

  private

  def generate_embedding!
    client = OpenAI::Client.new
    text = [name, cuisine_type, mood, price_range, description].compact.join(" ")

    response = client.embeddings(
      parameters: {
        model: "text-embedding-3-small",
        input: text
      }
    )

    embedding_vector = response.dig("data", 0, "embedding")
    update!(embedding: embedding_vector)
  end
end
