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

ActiveRecord::Schema[7.1].define(version: 2024_07_02_152105) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "boards", force: :cascade do |t|
    t.string "board_name"
    t.date "purchase_date"
    t.decimal "purchase_price"
    t.decimal "current_price"
    t.decimal "board_length"
    t.decimal "board_volume"
    t.string "board_type"
    t.date "last_used_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "garmin_activities", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "activity_type"
    t.datetime "date_time"
    t.string "location"
    t.decimal "distance"
    t.integer "calories"
    t.string "duration"
    t.integer "avg_hr"
    t.integer "max_hr"
    t.decimal "avg_speed"
    t.decimal "max_speed"
    t.integer "avg_pace"
    t.integer "max_pace"
    t.integer "avg_bike_cadence"
    t.integer "max_bike_cadence"
    t.integer "min_temp"
    t.integer "climb_time"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wind_sessions", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.date "session_date"
    t.float "duration_hours"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
