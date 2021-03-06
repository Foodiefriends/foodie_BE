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

ActiveRecord::Schema.define(version: 2021_04_13_215441) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "food_circles", force: :cascade do |t|
    t.string "food_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "food_items", force: :cascade do |t|
    t.bigint "restaurant_id"
    t.string "name"
    t.integer "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["restaurant_id"], name: "index_food_items_on_restaurant_id"
  end

  create_table "foodies", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "food_circle_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["food_circle_id"], name: "index_foodies_on_food_circle_id"
    t.index ["user_id"], name: "index_foodies_on_user_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.integer "yelp_rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "food_circle_id"
    t.bigint "food_item_id"
    t.integer "rating"
    t.string "image"
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["food_circle_id"], name: "index_reviews_on_food_circle_id"
    t.index ["food_item_id"], name: "index_reviews_on_food_item_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "food_items", "restaurants"
  add_foreign_key "foodies", "food_circles"
  add_foreign_key "foodies", "users"
  add_foreign_key "reviews", "food_circles"
  add_foreign_key "reviews", "food_items"
  add_foreign_key "reviews", "users"
end
