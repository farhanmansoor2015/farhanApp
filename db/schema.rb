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

ActiveRecord::Schema.define(version: 20150922120201) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "att_details", force: :cascade do |t|
    t.string   "status"
    t.integer  "student_id"
    t.integer  "att_master_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "att_details", ["att_master_id"], name: "index_att_details_on_att_master_id", using: :btree
  add_index "att_details", ["student_id"], name: "index_att_details_on_student_id", using: :btree

  create_table "att_masters", force: :cascade do |t|
    t.date     "date"
    t.string   "topics"
    t.date     "date_marked"
    t.integer  "course_id"
    t.integer  "teachassign_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "att_masters", ["course_id"], name: "index_att_masters_on_course_id", using: :btree
  add_index "att_masters", ["teachassign_id"], name: "index_att_masters_on_teachassign_id", using: :btree

  create_table "courses", force: :cascade do |t|
    t.string   "coursecode"
    t.string   "name"
    t.string   "description"
    t.string   "objectives"
    t.string   "offersemester"
    t.integer  "program_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "courses", ["program_id"], name: "index_courses_on_program_id", using: :btree

  create_table "faculties", force: :cascade do |t|
    t.string   "name"
    t.string   "specialization"
    t.date     "dateofbirth"
    t.string   "designation"
    t.string   "qualification"
    t.string   "address"
    t.string   "local"
    t.string   "contact_no"
    t.string   "status"
    t.string   "email"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "microposts", force: :cascade do |t|
    t.text     "content"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "microposts", ["user_id", "created_at"], name: "index_microposts_on_user_id_and_created_at", using: :btree
  add_index "microposts", ["user_id"], name: "index_microposts_on_user_id", using: :btree

  create_table "programs", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "duration"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "semesters", force: :cascade do |t|
    t.string   "semester"
    t.date     "start"
    t.date     "end"
    t.string   "status"
    t.integer  "session__id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "semesters", ["session__id"], name: "index_semesters_on_session__id", using: :btree

  create_table "session_s", force: :cascade do |t|
    t.string   "description"
    t.date     "start"
    t.date     "end"
    t.string   "status"
    t.integer  "program_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "session_s", ["program_id"], name: "index_session_s_on_program_id", using: :btree

  create_table "stu_reg_semesters", force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "semester_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "stu_reg_semesters", ["semester_id"], name: "index_stu_reg_semesters_on_semester_id", using: :btree
  add_index "stu_reg_semesters", ["student_id"], name: "index_stu_reg_semesters_on_student_id", using: :btree

  create_table "students", force: :cascade do |t|
    t.string   "name"
    t.string   "fname"
    t.string   "rollno"
    t.date     "dateofbirth"
    t.string   "contact"
    t.string   "nic_no"
    t.string   "address"
    t.string   "district"
    t.string   "email"
    t.integer  "session__id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "students", ["session__id"], name: "index_students_on_session__id", using: :btree

  create_table "teachassigns", force: :cascade do |t|
    t.integer  "faculty_id"
    t.integer  "semester_id"
    t.integer  "course_id"
    t.integer  "session__id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "teachassigns", ["course_id"], name: "index_teachassigns_on_course_id", using: :btree
  add_index "teachassigns", ["faculty_id"], name: "index_teachassigns_on_faculty_id", using: :btree
  add_index "teachassigns", ["semester_id"], name: "index_teachassigns_on_semester_id", using: :btree
  add_index "teachassigns", ["session__id"], name: "index_teachassigns_on_session__id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.string   "password_digest"
    t.string   "remember_digest"
    t.boolean  "admin",             default: false
    t.string   "activation_digest"
    t.boolean  "activated",         default: false
    t.datetime "activated_at"
    t.string   "reset_digest"
    t.datetime "reset_sent_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

  add_foreign_key "att_details", "att_masters"
  add_foreign_key "att_details", "students"
  add_foreign_key "att_masters", "courses"
  add_foreign_key "att_masters", "teachassigns"
  add_foreign_key "courses", "programs"
  add_foreign_key "microposts", "users"
  add_foreign_key "semesters", "session_s"
  add_foreign_key "session_s", "programs"
  add_foreign_key "stu_reg_semesters", "semesters"
  add_foreign_key "stu_reg_semesters", "students"
  add_foreign_key "students", "session_s"
  add_foreign_key "teachassigns", "courses"
  add_foreign_key "teachassigns", "faculties"
  add_foreign_key "teachassigns", "semesters"
  add_foreign_key "teachassigns", "session_s"
end
