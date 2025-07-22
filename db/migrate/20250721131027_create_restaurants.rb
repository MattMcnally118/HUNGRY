class CreateRestaurants < ActiveRecord::Migration[7.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :location
      t.string :cuisine_type
      t.float :price_range
      t.text :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
