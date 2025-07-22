class DropRestaurantReviewsTable < ActiveRecord::Migration[7.1]
  def change
    drop_table :restaurant_reviews
  end
end
