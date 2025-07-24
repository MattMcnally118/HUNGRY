class DropDishesReviewsTable < ActiveRecord::Migration[7.1]
  def change
    drop_table :dishes_reviews
  end
end
