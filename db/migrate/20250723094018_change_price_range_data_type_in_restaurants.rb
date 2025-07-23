class ChangePriceRangeDataTypeInRestaurants < ActiveRecord::Migration[7.1]
  def change
    change_column :restaurants, :price_range, :string
  end
end
