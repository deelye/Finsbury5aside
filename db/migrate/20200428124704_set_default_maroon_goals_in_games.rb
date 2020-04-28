class SetDefaultMaroonGoalsInGames < ActiveRecord::Migration[6.0]
  def change
    change_column_default :games, :maroon_goals, 0
  end
end
