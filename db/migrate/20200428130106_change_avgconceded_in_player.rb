class ChangeAvgconcededInPlayer < ActiveRecord::Migration[6.0]
  def change
    change_column_default :players, :avg_conceded, 0.00
  end
end
