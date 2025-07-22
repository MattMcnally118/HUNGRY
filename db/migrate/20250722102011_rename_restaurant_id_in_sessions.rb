class RenameRestaurantIdInSessions < ActiveRecord::Migration[7.1]
  def change
    # Remove old foreign key
    remove_foreign_key :sessions, :restaurants

    # Rename the column
    rename_column :sessions, :restaurant_id, :recommended_restaurant_id

    # Add new foreign key
    add_foreign_key :sessions, :restaurants, column: :recommended_restaurant_id
  end
end
