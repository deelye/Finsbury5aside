class SetDefaultSubsInPlayers < ActiveRecord::Migration[6.0]
  def change
    change_column_default :players, :subs, 0
  end
end
