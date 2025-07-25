class AddRestaurantImageToRestaurants < ActiveRecord::Migration[7.1]
  def change
    add_column :restaurants, :restaurant_image, :string
  end
end
