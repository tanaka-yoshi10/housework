# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140901132059) do

  create_table "house_works", force: true do |t|
    t.integer  "recipe_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "house_works", ["recipe_id"], name: "index_house_works_on_recipe_id"

  create_table "recepis", force: true do |t|
    t.string   "memo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recipes", force: true do |t|
    t.string   "memo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "work_logs", force: true do |t|
    t.integer  "user_id"
    t.integer  "time_result"
    t.string   "memo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "house_work_id"
    t.date     "completed"
  end

  add_index "work_logs", ["house_work_id"], name: "index_work_logs_on_house_work_id"
  add_index "work_logs", ["user_id"], name: "index_work_logs_on_user_id"

end
