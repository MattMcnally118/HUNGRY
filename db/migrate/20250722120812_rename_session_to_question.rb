class RenameSessionToQuestion < ActiveRecord::Migration[7.1]
  def change
    rename_table :sessions, :questions
  end
end
