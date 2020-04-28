class SetDefaultGoalsInGames < ActiveRecord::Migration[6.0]
  def change
    change_column_default :games, :goals, 0
  end
end
