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

ActiveRecord::Schema.define(version: 2019_03_26_234104) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "itineraries", force: :cascade do |t|
    t.bigint "user_id"
    t.integer "budget"
    t.string "title"
    t.string "city"
    t.string "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "date"
    t.string "notes"
    t.index ["user_id"], name: "index_itineraries_on_user_id"
  end

  create_table "itinerary_places", force: :cascade do |t|
    t.bigint "itinerary_id"
    t.bigint "place_id"
    t.index ["itinerary_id"], name: "index_itinerary_places_on_itinerary_id"
    t.index ["place_id"], name: "index_itinerary_places_on_place_id"
  end

  create_table "places", force: :cascade do |t|
    t.string "city"
    t.string "state"
    t.string "address"
    t.string "address2"
    t.integer "zipcode"
    t.string "longitude"
    t.string "latitude"
    t.string "name"
    t.string "photo"
    t.integer "rating"
    t.text "description"
    t.boolean "permenantly_closed"
    t.string "phone_number"
    t.string "website"
    t.integer "price_level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "itineraries", "users"
  add_foreign_key "itinerary_places", "itineraries"
  add_foreign_key "itinerary_places", "places"
end
