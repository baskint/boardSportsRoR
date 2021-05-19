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

ActiveRecord::Schema.define(version: 2021_05_19_023418) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "pgcrypto"
  enable_extension "plpgsql"
  enable_extension "uuid-ossp"

  create_table "garmin_activities", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "activity_type"
    t.datetime "date_time", null: false
    t.string "location"
    t.decimal "distance", precision: 10, scale: 2
    t.integer "calories"
    t.integer "duration"
    t.integer "avg_hr"
    t.integer "max_hr"
    t.decimal "avg_speed", precision: 10, scale: 1
    t.decimal "max_speed", precision: 10, scale: 1
    t.integer "avg_pace"
    t.integer "max_pace"
    t.integer "avg_bike_cadence"
    t.integer "max_bike_cadence"
    t.integer "min_temp"
    t.integer "climb_time"
    t.text "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["date_time"], name: "index_garmin_activities_on_date_time", unique: true
  end

  create_table "users", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "desc"
    t.string "type"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
