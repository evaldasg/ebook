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

ActiveRecord::Schema.define(version: 20140414123447) do

  create_table "disciplines", force: true do |t|
    t.string   "name"
    t.float    "klass_1"
    t.float    "klass_2"
    t.float    "klass_3"
    t.float    "klass_4"
    t.float    "klass_5"
    t.float    "klass_6"
    t.float    "klass_7"
    t.float    "klass_8"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groups", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "teacher_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "discipline"
  end

  add_index "groups", ["teacher_id"], name: "index_groups_on_teacher_id"

  create_table "students", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "speciality"
    t.integer  "age"
    t.integer  "klass"
  end

  create_table "teachers", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "age"
    t.float    "experience"
    t.string   "speciality"
  end

end
