class CreateRestaurantReviews < ActiveRecord::Migration[7.1]
  def change
    create_table :restaurant_reviews do |t|
      t.float :rating
      t.text :comment
      t.references :restaurant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
