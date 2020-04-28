ActiveRecord::Schema.define(version: 2020_04_28_113533) do

  enable_extension "plpgsql"

  create_table "games", force: :cascade do |t|
    t.datetime "date"
    t.integer "blue_goals"
    t.integer "maroon_goals"
    t.integer "goals"
    t.integer "conceded"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "lineups", force: :cascade do |t|
    t.bigint "player_id", null: false
    t.bigint "game_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["game_id"], name: "index_lineups_on_game_id"
    t.index ["player_id"], name: "index_lineups_on_player_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.integer "appearances"
    t.integer "goals"
    t.integer "conceded"
    t.decimal "avg_goals"
    t.decimal "avg_conceded"
    t.integer "subs"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "lineups", "games"
  add_foreign_key "lineups", "players"
end
