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

ActiveRecord::Schema[7.0].define(version: 2023_07_28_103722) do
  create_table "destination_infos", force: :cascade do |t|
    t.integer "destination_id", null: false
    t.text "attractions"
    t.text "landmarks"
    t.text "weather_conditions"
    t.text "safety_tips"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["destination_id"], name: "index_destination_infos_on_destination_id"
  end

  create_table "destinations", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.text "interests"
    t.decimal "budget"
    t.date "travel_dates"
    t.text "past_travel_history"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "itineraries", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "destination_id", null: false
    t.string "activity"
    t.string "accommodation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["destination_id"], name: "index_itineraries_on_destination_id"
    t.index ["user_id"], name: "index_itineraries_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.text "travel_preferences"
    t.decimal "budget_range"
    t.text "preferred_activities"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "destination_infos", "destinations"
  add_foreign_key "itineraries", "destinations"
  add_foreign_key "itineraries", "users"
end
