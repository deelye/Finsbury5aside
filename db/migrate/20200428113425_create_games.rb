class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.datetime :date
      t.integer :blue_goals
      t.integer :maroon_goals
      t.integer :goals
      t.integer :conceded

      t.timestamps
    end
  end
end
