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

ActiveRecord::Schema.define(version: 20160907124908) do

  create_table "addresses", force: :cascade do |t|
    t.string   "address"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "buiding_no"
    t.string   "city"
    t.integer  "company_id"
    t.integer  "employee_id"
    t.integer  "resource_id"
    t.string   "resource_type"
  end

  add_index "addresses", ["resource_id"], name: "index_addresses_on_resource_id"

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "company_id"
    t.integer  "salary"
    t.string   "Designation"
    t.string   "password"
    t.string   "password_digest"
    t.string   "remember_digest"
  end

  add_index "employees", ["email", "company_id"], name: "index_employees_on_email_and_company_id", unique: true

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "employee_id"
  end

end
