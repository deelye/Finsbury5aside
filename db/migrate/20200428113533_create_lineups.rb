class CreateLineups < ActiveRecord::Migration[6.0]
  def change
    create_table :lineups do |t|
      t.references :player, null: false, foreign_key: true
      t.references :game, null: false, foreign_key: true

      t.timestamps
    end
  end
end
