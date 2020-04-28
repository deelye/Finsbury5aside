class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :appearances
      t.integer :goals
      t.integer :conceded
      t.float :avg_goals
      t.float :avg_conceded
      t.integer :subs

      t.timestamps
    end
  end
end
