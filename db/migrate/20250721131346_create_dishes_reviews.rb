class CreateDishesReviews < ActiveRecord::Migration[7.1]
  def change
    create_table :dishes_reviews do |t|
      t.integer :rating
      t.text :comment
      t.references :dish, null: false, foreign_key: true

      t.timestamps
    end
  end
end
