# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_03_14_010500) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "games", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "room_code"
    t.boolean "is_game_over"
  end

  create_table "players", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.integer "player_number"
    t.boolean "is_witch"
    t.integer "lives", default: 1
    t.bigint "game_id"
    t.index ["game_id"], name: "index_players_on_game_id"
  end

  create_table "playing_cards", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "color"
    t.string "name"
    t.bigint "game_id"
    t.bigint "player_id"
    t.index ["game_id"], name: "index_playing_cards_on_game_id"
    t.index ["player_id"], name: "index_playing_cards_on_player_id"
  end

  create_table "tryal_cards", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.boolean "is_flipped"
    t.bigint "game_id"
    t.bigint "player_id"
    t.index ["game_id"], name: "index_tryal_cards_on_game_id"
    t.index ["player_id"], name: "index_tryal_cards_on_player_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "players", "games"
  add_foreign_key "playing_cards", "games"
  add_foreign_key "playing_cards", "players"
  add_foreign_key "tryal_cards", "games"
  add_foreign_key "tryal_cards", "players"
end
