class SetDefaultGoalsInPlayers < ActiveRecord::Migration[6.0]
  def change
    change_column_default :players, :goals, 0
  end
end
