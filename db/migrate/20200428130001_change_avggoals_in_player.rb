class ChangeAvggoalsInPlayer < ActiveRecord::Migration[6.0]
  def change
    change_column_default :players, :avg_goals, 0.00
  end
end
