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

ActiveRecord::Schema.define(version: 20160406115906) do

  create_table "companies", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "greetings", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "vendor_companies", force: :cascade do |t|
    t.integer  "vendor_id",  limit: 4
    t.integer  "company_id", limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "vendors", force: :cascade do |t|
    t.string   "business_name", limit: 255
    t.string   "greeting",      limit: 255
    t.string   "first_name",    limit: 255
    t.string   "last_name",     limit: 255
    t.string   "email",         limit: 255
    t.string   "phone_number",  limit: 255
    t.string   "address",       limit: 255
    t.string   "suite",         limit: 255
    t.string   "city",          limit: 255
    t.string   "state",         limit: 255
    t.string   "zipcode",       limit: 255
    t.string   "country",       limit: 255
    t.string   "web_site_url",  limit: 255
    t.string   "certificate",   limit: 255
    t.text     "information",   limit: 65535
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "image",         limit: 255
  end

end
