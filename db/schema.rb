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

ActiveRecord::Schema.define(version: 2019_07_06_212652) do

  create_table "authors", force: :cascade do |t|
    t.string "name"
  end

  create_table "books", force: :cascade do |t|
    t.string "name"
    t.integer "category_id"
    t.integer "author_id"
    t.string "status"
    t.integer "quality"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
  end

  create_table "check_outs", force: :cascade do |t|
    t.integer "user_id"
    t.integer "book_id"
    t.datetime "check_out_time"
    t.datetime "due"
    t.datetime "returned"
    t.integer "late_fee"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
  end

end
