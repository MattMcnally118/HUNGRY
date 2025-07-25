class RemoveUserIdFromRestaurants < ActiveRecord::Migration[7.1]
  def change
    remove_column :restaurants, :user_id, :bigint
  end
end
