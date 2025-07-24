class ChangeRecommendedRestaurantIdToAllowNullInQuestions < ActiveRecord::Migration[7.1]
  def change
    change_column_null :questions, :recommended_restaurant_id, true
  end
end
