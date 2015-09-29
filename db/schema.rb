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

ActiveRecord::Schema.define(version: 20150929170837) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "att_details", force: :cascade do |t|
    t.string   "status"
    t.integer  "att_master_id"
    t.integer  "student_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "att_details", ["att_master_id"], name: "index_att_details_on_att_master_id", using: :btree
  add_index "att_details", ["student_id"], name: "index_att_details_on_student_id", using: :btree

  create_table "att_masters", force: :cascade do |t|
    t.date     "date"
    t.string   "topics"
    t.date     "datemarked"
    t.integer  "course_id"
    t.integer  "teacherassign_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "att_masters", ["course_id"], name: "index_att_masters_on_course_id", using: :btree
  add_index "att_masters", ["teacherassign_id"], name: "index_att_masters_on_teacherassign_id", using: :btree

  create_table "courses", force: :cascade do |t|
    t.string   "coursecode"
    t.string   "name"
    t.string   "description"
    t.string   "offersemester"
    t.string   "objectives"
    t.integer  "program_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "courses", ["program_id"], name: "index_courses_on_program_id", using: :btree

  create_table "faculties", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "specialization"
    t.date     "dateofbirth"
    t.string   "designation"
    t.string   "qualification"
    t.string   "address"
    t.string   "local"
    t.string   "contact"
    t.string   "status"
    t.string   "email"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "programs", force: :cascade do |t|
    t.string   "description"
    t.string   "duration"
    t.string   "programprefix"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "semesters", force: :cascade do |t|
    t.string   "semester"
    t.date     "start"
    t.date     "end"
    t.string   "status"
    t.integer  "session_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "semesters", ["session_id"], name: "index_semesters_on_session_id", using: :btree

  create_table "sessions", force: :cascade do |t|
    t.string   "description"
    t.date     "start"
    t.date     "end"
    t.string   "status"
    t.integer  "program_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "sessions", ["program_id"], name: "index_sessions_on_program_id", using: :btree

  create_table "stu_reg_semesters", force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "semester_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "stu_reg_semesters", ["semester_id"], name: "index_stu_reg_semesters_on_semester_id", using: :btree
  add_index "stu_reg_semesters", ["student_id"], name: "index_stu_reg_semesters_on_student_id", using: :btree

  create_table "students", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "fname"
    t.string   "rollno"
    t.date     "dob"
    t.string   "contact"
    t.string   "nic"
    t.string   "address"
    t.string   "district"
    t.string   "email"
    t.integer  "session_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "students", ["session_id"], name: "index_students_on_session_id", using: :btree

  create_table "teacherassigns", force: :cascade do |t|
    t.integer  "faculty_id"
    t.integer  "session_id"
    t.integer  "semester_id"
    t.integer  "course_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "teacherassigns", ["course_id"], name: "index_teacherassigns_on_course_id", using: :btree
  add_index "teacherassigns", ["faculty_id"], name: "index_teacherassigns_on_faculty_id", using: :btree
  add_index "teacherassigns", ["semester_id"], name: "index_teacherassigns_on_semester_id", using: :btree
  add_index "teacherassigns", ["session_id"], name: "index_teacherassigns_on_session_id", using: :btree

  add_foreign_key "att_details", "att_masters"
  add_foreign_key "att_details", "students"
  add_foreign_key "att_masters", "courses"
  add_foreign_key "att_masters", "teacherassigns"
  add_foreign_key "courses", "programs"
  add_foreign_key "semesters", "sessions"
  add_foreign_key "sessions", "programs"
  add_foreign_key "stu_reg_semesters", "semesters"
  add_foreign_key "stu_reg_semesters", "students"
  add_foreign_key "students", "sessions"
  add_foreign_key "teacherassigns", "courses"
  add_foreign_key "teacherassigns", "faculties"
  add_foreign_key "teacherassigns", "semesters"
  add_foreign_key "teacherassigns", "sessions"
end
