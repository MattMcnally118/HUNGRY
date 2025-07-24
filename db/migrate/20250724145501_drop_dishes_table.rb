class DropDishesTable < ActiveRecord::Migration[7.1]
  def change
    drop_table :dishes
  end
end
