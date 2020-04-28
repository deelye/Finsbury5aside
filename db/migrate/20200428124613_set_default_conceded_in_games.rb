class SetDefaultConcededInGames < ActiveRecord::Migration[6.0]
  def change
    change_column_default :games, :conceded, 0
  end
end
