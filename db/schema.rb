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

ActiveRecord::Schema[7.0].define(version: 2023_08_08_135132) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attractions", force: :cascade do |t|
    t.string "attraction_name"
    t.text "description"
    t.string "image_1"
    t.string "image_2"
    t.string "image_3"
    t.string "image_4"
    t.datetime "deadline"
    t.string "map_url"
    t.decimal "budget"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "destinations", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_destinations_on_user_id"
  end

  create_table "itineraries", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "destination_id", null: false
    t.date "date"
    t.time "time"
    t.text "activity"
    t.text "duration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "budget"
    t.index ["destination_id"], name: "index_itineraries_on_destination_id"
    t.index ["user_id"], name: "index_itineraries_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar"
    t.boolean "admin"
  end

  add_foreign_key "destinations", "users"
  add_foreign_key "itineraries", "destinations"
  add_foreign_key "itineraries", "users"
end
