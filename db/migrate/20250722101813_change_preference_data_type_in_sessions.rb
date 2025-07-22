class ChangePreferenceDataTypeInSessions < ActiveRecord::Migration[7.1]
  def up
    change_column :sessions, :preference_data, :jsonb, using: 'preference_data::jsonb'
  end

  def down
    change_column :sessions, :preference_data, :text, using: 'preference_data::text'
  end
end
