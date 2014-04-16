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

ActiveRecord::Schema.define(version: 20140416084751) do

  create_table "disciplines", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "klass",      limit: 1
    t.string   "variant"
    t.decimal  "duration",             precision: 2, scale: 1, default: 0.0
    t.string   "speciality"
    t.string   "syllabus"
    t.boolean  "required",                                     default: true
    t.boolean  "status",                                       default: true
  end

  create_table "groups", force: true do |t|
    t.string   "name"
    t.text     "description",   limit: 255
    t.integer  "teacher_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "discipline_id"
    t.string   "variant"
  end

  add_index "groups", ["discipline_id"], name: "index_groups_on_discipline_id"
  add_index "groups", ["teacher_id"], name: "index_groups_on_teacher_id"

  create_table "student_disciplines", force: true do |t|
    t.integer  "student_id"
    t.integer  "discipline_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "student_disciplines", ["discipline_id"], name: "index_student_disciplines_on_discipline_id"
  add_index "student_disciplines", ["student_id"], name: "index_student_disciplines_on_student_id"

  create_table "students", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "speciality"
    t.integer  "age"
    t.integer  "klass"
  end

  create_table "studentsdisciplines", force: true do |t|
    t.integer  "student_id"
    t.integer  "discipline_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "status_b",      default: true
  end

  add_index "studentsdisciplines", ["discipline_id"], name: "index_studentsdisciplines_on_discipline_id"
  add_index "studentsdisciplines", ["student_id"], name: "index_studentsdisciplines_on_student_id"

  create_table "studentsgroups", force: true do |t|
    t.integer  "student_id"
    t.integer  "group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "studentsgroups", ["group_id"], name: "index_studentsgroups_on_group_id"
  add_index "studentsgroups", ["student_id"], name: "index_studentsgroups_on_student_id"

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
