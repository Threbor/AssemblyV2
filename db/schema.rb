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

ActiveRecord::Schema[7.0].define(version: 2023_06_27_155344) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "characters", force: :cascade do |t|
    t.string "photo"
    t.string "name"
    t.string "quotation"
    t.string "background"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "event_output"
    t.integer "dice_value"
    t.bigint "word_id", null: false
    t.bigint "storyroom_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["storyroom_id"], name: "index_events_on_storyroom_id"
    t.index ["word_id"], name: "index_events_on_word_id"
  end

  create_table "messages", force: :cascade do |t|
    t.string "content"
    t.bigint "storyroom_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["storyroom_id"], name: "index_messages_on_storyroom_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "storyrooms", force: :cascade do |t|
    t.string "title"
    t.bigint "universe_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["universe_id"], name: "index_storyrooms_on_universe_id"
  end

  create_table "universe_character_associations", force: :cascade do |t|
    t.bigint "universe_id", null: false
    t.bigint "character_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_id"], name: "index_universe_character_associations_on_character_id"
    t.index ["universe_id"], name: "index_universe_character_associations_on_universe_id"
  end

  create_table "universe_word_associations", force: :cascade do |t|
    t.bigint "universe_id", null: false
    t.bigint "word_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["universe_id"], name: "index_universe_word_associations_on_universe_id"
    t.index ["word_id"], name: "index_universe_word_associations_on_word_id"
  end

  create_table "universes", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "words", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "events", "storyrooms"
  add_foreign_key "events", "words"
  add_foreign_key "messages", "storyrooms"
  add_foreign_key "messages", "users"
  add_foreign_key "storyrooms", "universes"
  add_foreign_key "universe_character_associations", "characters"
  add_foreign_key "universe_character_associations", "universes"
  add_foreign_key "universe_word_associations", "universes"
  add_foreign_key "universe_word_associations", "words"
end
