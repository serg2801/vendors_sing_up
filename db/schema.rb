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

ActiveRecord::Schema.define(version: 20160516122204) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true

  create_table "admins", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true

  create_table "arbor_gentry_carriers", force: :cascade do |t|
    t.string   "name"
    t.integer  "broad_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "arbor_gentry_carriers", ["broad_id"], name: "index_arbor_gentry_carriers_on_broad_id"

  create_table "boards", force: :cascade do |t|
    t.string   "legal_business_name"
    t.string   "company_name"
    t.string   "vendor_based_in"
    t.string   "vendor_based_in_other"
    t.string   "main_address_street"
    t.string   "main_address_unit"
    t.string   "main_address_city"
    t.string   "main_address_state"
    t.string   "main_address_zip"
    t.string   "main_address_country"
    t.string   "primary_business_name"
    t.string   "primary_business_phone"
    t.string   "primary_business_email"
    t.string   "primary_business_fax"
    t.string   "finance_name"
    t.string   "finance_phone"
    t.string   "finance_email"
    t.string   "finance_fax"
    t.string   "purchase_orders_name"
    t.string   "purchase_orders_phone"
    t.string   "purchase_orders_email"
    t.string   "purchase_orders_fax"
    t.string   "inventory_name"
    t.string   "inventory_phone"
    t.string   "inventory_email"
    t.string   "inventory_fax"
    t.string   "returns_name"
    t.string   "returns_phone"
    t.string   "returns_email"
    t.string   "returns_fax"
    t.string   "product_information_name"
    t.string   "product_information_phone"
    t.string   "product_information_email"
    t.string   "product_information_fax"
    t.string   "customer_service_name"
    t.string   "customer_service_phone"
    t.string   "customer_service_email"
    t.string   "customer_service_fax"
    t.string   "inventory_integration_method"
    t.string   "integrations_contact_name"
    t.string   "integrations_contact_phone"
    t.string   "integrations_contact_email"
    t.string   "integrations_contact_fax"
    t.string   "upc_marketing"
    t.string   "upc_ticketing_contact_name"
    t.string   "upc_ticketing_contact_phone"
    t.string   "upc_ticketing_contact_email"
    t.string   "upc_ticketing_contact_fax"
    t.string   "returns_contact_name"
    t.string   "returns_contact_phone"
    t.string   "returns_contact_email"
    t.string   "returns_contact_fax"
    t.string   "returns_address_street"
    t.string   "returns_address_unit"
    t.string   "returns_address_city"
    t.string   "returns_address_state"
    t.string   "returns_address_zip"
    t.string   "returns_address_country"
    t.string   "preferred_shipping_method"
    t.text     "protocol_for_freight_shipments"
    t.string   "multiple_warehouses"
    t.string   "shipping_from_multiple_warehouses"
    t.string   "transportation_and_shipment_section"
    t.string   "ship_alone_items"
    t.string   "average_inventory_levels"
    t.string   "typical_shipping_lead_time_count"
    t.string   "typical_shipping_lead_time_day"
    t.string   "average_inventory_replenishment_time_count"
    t.string   "average_inventory_replenishment_time_day"
    t.string   "average_inventory_replenishment_time_other"
    t.string   "method"
    t.string   "method_other"
    t.string   "frequency"
    t.string   "frequency_other"
    t.string   "credit_card"
    t.string   "wire_transfer"
    t.string   "ach"
    t.string   "check_by_mail"
    t.string   "pay_pal"
    t.string   "bitcoin"
    t.string   "costs_fees"
    t.string   "if_so_costs_fees"
    t.string   "requirements_for_purchase_orders"
    t.string   "if_yes_requirements_for_purchase_orders"
    t.text     "imap_pricing"
    t.string   "return_policy"
    t.text     "merchandising"
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
  end

  create_table "brands", force: :cascade do |t|
    t.string   "name"
    t.integer  "broad_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "brands", ["broad_id"], name: "index_brands_on_broad_id"

  create_table "categories", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "channels", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "greetings", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "options", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_types", force: :cascade do |t|
    t.string   "name"
    t.integer  "broad_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "product_types", ["broad_id"], name: "index_product_types_on_broad_id"

  create_table "trade_categories", force: :cascade do |t|
    t.integer  "trade_id"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "trade_channels", force: :cascade do |t|
    t.integer  "trade_id"
    t.integer  "channel_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trade_options", force: :cascade do |t|
    t.integer  "trade_id"
    t.integer  "option_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trades", force: :cascade do |t|
    t.string   "business_name"
    t.string   "greeting"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone_number"
    t.string   "address"
    t.string   "suite"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.string   "country"
    t.string   "web_site_url_my"
    t.string   "web_site"
    t.text     "information"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "image"
  end

  create_table "transportation_and_shipments", force: :cascade do |t|
    t.string   "ship_from_information_street"
    t.string   "ship_from_information_unit"
    t.string   "ship_from_information_city"
    t.string   "ship_from_information_state"
    t.string   "ship_from_information_zip"
    t.string   "ship_from_information_country"
    t.string   "transportation_contact_name"
    t.string   "transportation_contact_phone"
    t.string   "transportation_contact_email"
    t.string   "transportation_contact_fax"
    t.integer  "broad_id"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "transportation_and_shipments", ["broad_id"], name: "index_transportation_and_shipments_on_broad_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "vendor_carriers", force: :cascade do |t|
    t.string   "name"
    t.integer  "broad_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "vendor_carriers", ["broad_id"], name: "index_vendor_carriers_on_broad_id"

  create_table "vendor_companies", force: :cascade do |t|
    t.integer  "vendor_id"
    t.integer  "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vendors", force: :cascade do |t|
    t.string   "business_name"
    t.string   "greeting"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone_number"
    t.string   "address"
    t.string   "suite"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.string   "country"
    t.string   "web_site_url"
    t.string   "certificate"
    t.text     "information"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "image"
  end

end
