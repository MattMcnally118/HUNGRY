class AddEmbeddingToRestaurants < ActiveRecord::Migration[7.1]
  def change
    add_column :restaurants, :embedding, :vector, limit: 1536
  end
end
