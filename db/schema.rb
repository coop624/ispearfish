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

ActiveRecord::Schema.define(version: 2018_09_04_162503) do

  create_table "comments", force: :cascade do |t|
    t.integer "user_id"
    t.integer "post_id"
    t.string "text"
  end

  create_table "fish", force: :cascade do |t|
    t.string "name"
    t.string "photo"
    t.string "description"
    t.string "restrictions"
    t.string "bag_limit"
  end

  create_table "likes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "post_id"
  end

  create_table "location", force: :cascade do |t|
    t.string "name"
    t.integer "co_ords"
  end

  create_table "location_fish", force: :cascade do |t|
    t.integer "fish_id"
    t.integer "location_id"
  end

  create_table "posts", force: :cascade do |t|
    t.integer "user_id"
    t.integer "location_id"
    t.string "title"
    t.string "photo"
    t.string "caption"
    t.string "fish_type"
    t.string "location"
    t.integer "timestamp"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "contact"
    t.string "profile_photo"
    t.string "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
