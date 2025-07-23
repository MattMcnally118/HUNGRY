class AddAttributesToRestaurants < ActiveRecord::Migration[7.1]
  def change
    add_column :restaurants, :number_of_people, :integer
    add_column :restaurants, :mood, :string
    add_column :restaurants, :dietary_restrictions, :text, array: true, default: []
  end
end
