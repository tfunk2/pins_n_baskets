# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_03_24_173742) do

  create_table "disc_golf_courses", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.integer "number_of_holes"
    t.integer "par"
    t.integer "length"
    t.string "terrain"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "disc_golf_reviews", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "disc_golf_course_id", null: false
    t.integer "course_condition"
    t.integer "difficulty_rating"
    t.text "things_liked"
    t.text "things_disliked"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["disc_golf_course_id"], name: "index_disc_golf_reviews_on_disc_golf_course_id"
    t.index ["user_id"], name: "index_disc_golf_reviews_on_user_id"
  end

  create_table "golf_courses", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.integer "number_of_holes"
    t.integer "par"
    t.integer "length"
    t.integer "slope"
    t.float "rating"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "golf_reviews", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "golf_course_id", null: false
    t.integer "fairway_rating"
    t.integer "green_rating"
    t.integer "course_condition"
    t.text "things_liked"
    t.text "things_disliked"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["golf_course_id"], name: "index_golf_reviews_on_golf_course_id"
    t.index ["user_id"], name: "index_golf_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "display_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "disc_golf_reviews", "disc_golf_courses"
  add_foreign_key "disc_golf_reviews", "users"
  add_foreign_key "golf_reviews", "golf_courses"
  add_foreign_key "golf_reviews", "users"
end
