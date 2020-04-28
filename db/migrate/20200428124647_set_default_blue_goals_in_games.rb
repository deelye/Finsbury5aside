class SetDefaultBlueGoalsInGames < ActiveRecord::Migration[6.0]
  def change
    change_column_default :games, :blue_goals, 0
  end
end
