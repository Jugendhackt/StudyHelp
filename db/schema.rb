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

ActiveRecord::Schema.define(version: 20130908075638) do

  create_table "lessons", force: true do |t|
    t.string   "name"
    t.string   "tutor"
    t.string   "location"
    t.text     "notes"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "lessons", ["user_id"], name: "index_lessons_on_user_id"

  create_table "stunden", force: true do |t|
    t.datetime "date"
    t.text     "notes"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "location"
    t.string   "tutor"
    t.integer  "duration"
    t.datetime "endtime"
    t.integer  "lesson_id"
  end

  add_index "stunden", ["lesson_id"], name: "index_stunden_on_lesson_id"
  add_index "stunden", ["user_id"], name: "index_stunden_on_user_id"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "password_digest"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
