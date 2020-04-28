class SetDefaultAppearancesInPlayers < ActiveRecord::Migration[6.0]
  def change
    change_column_default :players, :appearances, 0
  end
end
