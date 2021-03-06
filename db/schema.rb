# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_10_27_120016) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.text "title"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "lesson_id"
    t.date "date"
    t.time "time"
    t.text "description"
    t.text "image"
    t.text "location"
    t.text "contact"
  end

  create_table "lessons", force: :cascade do |t|
    t.text "title"
    t.integer "user_id"
    t.integer "booking_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "date"
    t.time "time"
    t.text "description"
    t.text "location"
    t.text "contact"
    t.text "image"
    t.integer "location_id"
    t.text "suburb"
    t.integer "postcode"
  end

  create_table "locations", force: :cascade do |t|
    t.text "suburb"
    t.integer "postcode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.text "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.boolean "admin", default: false
    t.boolean "instructor", default: false
    t.text "name"
    t.text "address"
    t.integer "phonenumber"
    t.text "image"
    t.text "description"
    t.text "location"
    t.text "about"
    t.date "dob"
  end

end
