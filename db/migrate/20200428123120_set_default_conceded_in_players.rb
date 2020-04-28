class SetDefaultConcededInPlayers < ActiveRecord::Migration[6.0]
  def change
    change_column_default :players, :conceded, 0
  end
end
