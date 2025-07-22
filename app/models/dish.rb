class Dish < ApplicationRecord
  belongs_to :restaurant
  has_many :dish_reviews
end
