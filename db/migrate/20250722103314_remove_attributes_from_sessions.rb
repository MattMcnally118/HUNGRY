class RemoveAttributesFromSessions < ActiveRecord::Migration[7.1]
  def change
    remove_column :sessions, :user_response, :text
    remove_column :sessions, :question, :text
  end
end
