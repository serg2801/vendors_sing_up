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

ActiveRecord::Schema.define(version: 20160705161643) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace",     limit: 255
    t.text     "body",          limit: 65535
    t.string   "resource_id",   limit: 255,   null: false
    t.string   "resource_type", limit: 255,   null: false
    t.integer  "author_id",     limit: 4
    t.string   "author_type",   limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "arbor_gentry_carriers", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "board_id",   limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "arbor_gentry_carriers", ["board_id"], name: "index_arbor_gentry_carriers_on_board_id", using: :btree

  create_table "boards", force: :cascade do |t|
    t.string   "legal_business_name",                        limit: 255
    t.string   "company_name",                               limit: 255
    t.string   "vendor_based_in",                            limit: 255
    t.string   "vendor_based_in_other",                      limit: 255
    t.string   "main_address_street",                        limit: 255
    t.string   "main_address_unit",                          limit: 255
    t.string   "main_address_city",                          limit: 255
    t.string   "main_address_state",                         limit: 255
    t.string   "main_address_zip",                           limit: 255
    t.string   "main_address_country",                       limit: 255
    t.string   "primary_business_name",                      limit: 255
    t.string   "primary_business_phone",                     limit: 255
    t.string   "primary_business_email",                     limit: 255
    t.string   "primary_business_fax",                       limit: 255
    t.string   "finance_name",                               limit: 255
    t.string   "finance_phone",                              limit: 255
    t.string   "finance_email",                              limit: 255
    t.string   "finance_fax",                                limit: 255
    t.string   "purchase_orders_name",                       limit: 255
    t.string   "purchase_orders_phone",                      limit: 255
    t.string   "purchase_orders_email",                      limit: 255
    t.string   "purchase_orders_fax",                        limit: 255
    t.string   "inventory_name",                             limit: 255
    t.string   "inventory_phone",                            limit: 255
    t.string   "inventory_email",                            limit: 255
    t.string   "inventory_fax",                              limit: 255
    t.string   "returns_name",                               limit: 255
    t.string   "returns_phone",                              limit: 255
    t.string   "returns_email",                              limit: 255
    t.string   "returns_fax",                                limit: 255
    t.string   "product_information_name",                   limit: 255
    t.string   "product_information_phone",                  limit: 255
    t.string   "product_information_email",                  limit: 255
    t.string   "product_information_fax",                    limit: 255
    t.string   "customer_service_name",                      limit: 255
    t.string   "customer_service_phone",                     limit: 255
    t.string   "customer_service_email",                     limit: 255
    t.string   "customer_service_fax",                       limit: 255
    t.string   "inventory_integration_method",               limit: 255
    t.string   "integrations_contact_name",                  limit: 255
    t.string   "integrations_contact_phone",                 limit: 255
    t.string   "integrations_contact_email",                 limit: 255
    t.string   "integrations_contact_fax",                   limit: 255
    t.string   "upc_marketing",                              limit: 255
    t.string   "upc_ticketing_contact_name",                 limit: 255
    t.string   "upc_ticketing_contact_phone",                limit: 255
    t.string   "upc_ticketing_contact_email",                limit: 255
    t.string   "upc_ticketing_contact_fax",                  limit: 255
    t.string   "returns_contact_name",                       limit: 255
    t.string   "returns_contact_phone",                      limit: 255
    t.string   "returns_contact_email",                      limit: 255
    t.string   "returns_contact_fax",                        limit: 255
    t.string   "returns_address_street",                     limit: 255
    t.string   "returns_address_unit",                       limit: 255
    t.string   "returns_address_city",                       limit: 255
    t.string   "returns_address_state",                      limit: 255
    t.string   "returns_address_zip",                        limit: 255
    t.string   "returns_address_country",                    limit: 255
    t.string   "preferred_shipping_method",                  limit: 255
    t.text     "protocol_for_freight_shipments",             limit: 65535
    t.string   "multiple_warehouses",                        limit: 255
    t.string   "shipping_from_multiple_warehouses",          limit: 255
    t.string   "transportation_and_shipment_section",        limit: 255
    t.string   "ship_alone_items",                           limit: 255
    t.string   "average_inventory_levels",                   limit: 255
    t.string   "typical_shipping_lead_time_count",           limit: 255
    t.string   "typical_shipping_lead_time_day",             limit: 255
    t.string   "average_inventory_replenishment_time_count", limit: 255
    t.string   "average_inventory_replenishment_time_day",   limit: 255
    t.string   "average_inventory_replenishment_time_other", limit: 255
    t.string   "method",                                     limit: 255
    t.string   "method_other",                               limit: 255
    t.string   "frequency",                                  limit: 255
    t.string   "frequency_other",                            limit: 255
    t.string   "credit_card",                                limit: 255
    t.string   "wire_transfer",                              limit: 255
    t.string   "ach",                                        limit: 255
    t.string   "check_by_mail",                              limit: 255
    t.string   "pay_pal",                                    limit: 255
    t.string   "bitcoin",                                    limit: 255
    t.string   "costs_fees",                                 limit: 255
    t.string   "if_so_costs_fees",                           limit: 255
    t.string   "requirements_for_purchase_orders",           limit: 255
    t.string   "if_yes_requirements_for_purchase_orders",    limit: 255
    t.text     "imap_pricing",                               limit: 65535
    t.string   "return_policy",                              limit: 255
    t.text     "merchandising",                              limit: 65535
    t.datetime "created_at",                                                               null: false
    t.datetime "updated_at",                                                               null: false
    t.integer  "user_id",                                    limit: 4
    t.boolean  "grants_access",                                            default: false
    t.string   "costs_fees_radio",                           limit: 255
    t.text     "w_9_form",                                   limit: 65535
    t.text     "certificate",                                limit: 65535
    t.text     "inventory_integration_method_other",         limit: 65535
    t.text     "contact_other_title",                        limit: 65535
    t.text     "contact_other_name",                         limit: 65535
    t.text     "contact_other_phone",                        limit: 65535
    t.text     "contact_other_email",                        limit: 65535
    t.text     "contact_other_fax",                          limit: 65535
  end

  create_table "brands", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "board_id",   limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "brands", ["board_id"], name: "index_brands_on_board_id", using: :btree

  create_table "categories", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "channels", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

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

  create_table "information_trades", force: :cascade do |t|
    t.text     "vendor_agreement", limit: 65535
    t.integer  "trade_id",         limit: 4
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "options", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "product_types", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "board_id",   limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "product_types", ["board_id"], name: "index_product_types_on_board_id", using: :btree

  create_table "trade_categories", force: :cascade do |t|
    t.integer  "trade_id",    limit: 4
    t.integer  "category_id", limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "trade_channels", force: :cascade do |t|
    t.integer  "trade_id",   limit: 4
    t.integer  "channel_id", limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "trade_options", force: :cascade do |t|
    t.integer  "trade_id",   limit: 4
    t.integer  "option_id",  limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "trades", force: :cascade do |t|
    t.string   "business_name",   limit: 255
    t.string   "greeting",        limit: 255
    t.string   "first_name",      limit: 255
    t.string   "last_name",       limit: 255
    t.string   "email",           limit: 255
    t.string   "phone_number",    limit: 255
    t.string   "address",         limit: 255
    t.string   "suite",           limit: 255
    t.string   "city",            limit: 255
    t.string   "state",           limit: 255
    t.string   "zipcode",         limit: 255
    t.string   "country",         limit: 255
    t.string   "web_site_url_my", limit: 255
    t.string   "web_site",        limit: 255
    t.text     "information",     limit: 65535
    t.datetime "created_at",                                    null: false
    t.datetime "updated_at",                                    null: false
    t.string   "image",           limit: 255
    t.integer  "user_id",         limit: 4
    t.boolean  "grant_access",                  default: false
  end

  create_table "transportation_and_shipments", force: :cascade do |t|
    t.string   "ship_from_information_street",  limit: 255
    t.string   "ship_from_information_unit",    limit: 255
    t.string   "ship_from_information_city",    limit: 255
    t.string   "ship_from_information_state",   limit: 255
    t.string   "ship_from_information_zip",     limit: 255
    t.string   "ship_from_information_country", limit: 255
    t.string   "transportation_contact_name",   limit: 255
    t.string   "transportation_contact_phone",  limit: 255
    t.string   "transportation_contact_email",  limit: 255
    t.string   "transportation_contact_fax",    limit: 255
    t.integer  "board_id",                      limit: 4
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
  end

  add_index "transportation_and_shipments", ["board_id"], name: "index_transportation_and_shipments_on_board_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "pas_decrypt",            limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "vendor_carriers", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "board_id",   limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "vendor_carriers", ["board_id"], name: "index_vendor_carriers_on_board_id", using: :btree

  create_table "vendor_companies", force: :cascade do |t|
    t.integer  "vendor_id",  limit: 4
    t.integer  "company_id", limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "vendors", force: :cascade do |t|
    t.string   "business_name",     limit: 255
    t.string   "greeting",          limit: 255
    t.string   "first_name",        limit: 255
    t.string   "last_name",         limit: 255
    t.string   "email",             limit: 255
    t.string   "phone_number",      limit: 255
    t.string   "address",           limit: 255
    t.string   "suite",             limit: 255
    t.string   "city",              limit: 255
    t.string   "state",             limit: 255
    t.string   "zipcode",           limit: 255
    t.string   "country",           limit: 255
    t.string   "web_site_url",      limit: 255
    t.string   "certificate",       limit: 255
    t.text     "information",       limit: 65535
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "image",             limit: 255
    t.text     "about_our_company", limit: 65535
    t.text     "designer",          limit: 65535
    t.text     "tax_exempt",        limit: 65535
  end

  add_foreign_key "arbor_gentry_carriers", "boards"
  add_foreign_key "brands", "boards"
  add_foreign_key "product_types", "boards"
  add_foreign_key "transportation_and_shipments", "boards"
  add_foreign_key "vendor_carriers", "boards"
end
