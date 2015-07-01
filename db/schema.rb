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

ActiveRecord::Schema.define(version: 20150701190735) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admissions", force: :cascade do |t|
    t.string   "Firstname"
    t.string   "Lastname"
    t.string   "Registration"
    t.string   "Nic"
    t.string   "Address"
    t.string   "City"
    t.string   "Province"
    t.string   "District"
    t.string   "Lastdegree"
    t.integer  "department_id"
    t.integer  "degree_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "admissions", ["degree_id"], name: "index_admissions_on_degree_id", using: :btree
  add_index "admissions", ["department_id"], name: "index_admissions_on_department_id", using: :btree

  create_table "degrees", force: :cascade do |t|
    t.string   "Name"
    t.date     "Start"
    t.date     "End"
    t.integer  "department_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "duration"
  end

  add_index "degrees", ["department_id"], name: "index_degrees_on_department_id", using: :btree

  create_table "departments", force: :cascade do |t|
    t.string   "Name"
    t.string   "Chairman"
    t.string   "Examiner"
    t.string   "Resultmaker"
    t.integer  "Classes"
    t.string   "Email"
    t.integer  "Contact"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "fax"
  end

  create_table "employees", force: :cascade do |t|
    t.string   "Firstname"
    t.string   "Lastname"
    t.string   "Address"
    t.string   "City"
    t.string   "Province"
    t.integer  "Postalcode"
    t.string   "Country"
    t.integer  "Phone"
    t.string   "Email"
    t.integer  "Salary"
    t.integer  "department_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "employees", ["department_id"], name: "index_employees_on_department_id", using: :btree

  create_table "faculties", force: :cascade do |t|
    t.string   "Firstname"
    t.string   "Lastname"
    t.string   "Designation"
    t.string   "Nic"
    t.string   "Address"
    t.string   "City"
    t.string   "Province"
    t.string   "District"
    t.integer  "Contact"
    t.string   "Email"
    t.integer  "department_id"
    t.integer  "degree_id"
    t.integer  "subject_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "faculties", ["degree_id"], name: "index_faculties_on_degree_id", using: :btree
  add_index "faculties", ["department_id"], name: "index_faculties_on_department_id", using: :btree
  add_index "faculties", ["subject_id"], name: "index_faculties_on_subject_id", using: :btree

  create_table "students", force: :cascade do |t|
    t.string   "Firstname"
    t.string   "Lastname"
    t.string   "Registration"
    t.string   "Nic"
    t.string   "Address"
    t.string   "City"
    t.string   "Province"
    t.string   "District"
    t.string   "Education"
    t.integer  "Contact"
    t.string   "Email"
    t.integer  "department_id"
    t.integer  "admission_id"
    t.integer  "degree_id"
    t.integer  "subject_id"
    t.integer  "faculty_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "students", ["admission_id"], name: "index_students_on_admission_id", using: :btree
  add_index "students", ["degree_id"], name: "index_students_on_degree_id", using: :btree
  add_index "students", ["department_id"], name: "index_students_on_department_id", using: :btree
  add_index "students", ["faculty_id"], name: "index_students_on_faculty_id", using: :btree
  add_index "students", ["subject_id"], name: "index_students_on_subject_id", using: :btree

  create_table "subjects", force: :cascade do |t|
    t.string   "Name"
    t.string   "Credits"
    t.string   "Incharge"
    t.integer  "department_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "subjects", ["department_id"], name: "index_subjects_on_department_id", using: :btree

  add_foreign_key "admissions", "degrees"
  add_foreign_key "admissions", "departments"
  add_foreign_key "degrees", "departments"
  add_foreign_key "employees", "departments"
  add_foreign_key "faculties", "degrees"
  add_foreign_key "faculties", "departments"
  add_foreign_key "faculties", "subjects"
  add_foreign_key "students", "admissions"
  add_foreign_key "students", "degrees"
  add_foreign_key "students", "departments"
  add_foreign_key "students", "faculties"
  add_foreign_key "students", "subjects"
  add_foreign_key "subjects", "departments"
end
