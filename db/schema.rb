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

ActiveRecord::Schema.define(version: 20150510182924) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bank_details", force: true do |t|
    t.string   "account_holder_name"
    t.integer  "account_number"
    t.string   "bank_name"
    t.string   "branch"
    t.string   "ifci_code"
    t.string   "account_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ckeditor_assets", force: true do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable", using: :btree
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type", using: :btree

  create_table "event_bookings", force: true do |t|
    t.integer  "user_id"
    t.integer  "event_master_id"
    t.integer  "event_ticket_type_id"
    t.integer  "quantity"
    t.float    "gross_total"
    t.string   "payment_status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "event_bookings", ["event_master_id"], name: "index_event_bookings_on_event_master_id", using: :btree
  add_index "event_bookings", ["event_ticket_type_id"], name: "index_event_bookings_on_event_ticket_type_id", using: :btree
  add_index "event_bookings", ["user_id"], name: "index_event_bookings_on_user_id", using: :btree

  create_table "event_category_mappings", force: true do |t|
    t.integer  "categories_id"
    t.integer  "sub_categories_id"
    t.integer  "event_master_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "event_category_mappings", ["categories_id"], name: "index_event_category_mappings_on_categories_id", using: :btree
  add_index "event_category_mappings", ["event_master_id"], name: "index_event_category_mappings_on_event_master_id", using: :btree
  add_index "event_category_mappings", ["sub_categories_id"], name: "index_event_category_mappings_on_sub_categories_id", using: :btree

  create_table "event_masters", force: true do |t|
    t.string   "title"
    t.string   "url"
    t.string   "description"
    t.integer  "capacity"
    t.boolean  "private"
    t.integer  "category"
    t.integer  "sub_category"
    t.integer  "status"
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "max"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "admin_contact_no"
    t.string   "admin_contact_email"
    t.string   "map_location"
    t.boolean  "is_terms_and_condition"
    t.text     "terms_and_condition"
    t.boolean  "is_virtual"
    t.integer  "display_order"
    t.string   "banner_image_file_name"
    t.string   "banner_image_content_type"
    t.integer  "banner_image_file_size"
    t.datetime "banner_image_updated_at"
    t.string   "address_one"
    t.string   "address_two"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "postal_code"
  end

  add_index "event_masters", ["user_id"], name: "index_event_masters_on_user_id", using: :btree

  create_table "event_ticket_types", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "price"
    t.integer  "min"
    t.integer  "max"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "event_master_id"
    t.integer  "quantity"
    t.datetime "start_time"
    t.datetime "end_time"
    t.integer  "display_order"
  end

  add_index "event_ticket_types", ["event_master_id"], name: "index_event_ticket_types_on_event_master_id", using: :btree

  create_table "status_masters", force: true do |t|
    t.string   "name"
    t.integer  "description"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sub_categories", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "category_id"
  end

  add_index "sub_categories", ["category_id"], name: "index_sub_categories_on_category_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "fullname"
    t.string   "sex"
    t.string   "mobile"
    t.date     "dob"
    t.string   "userable_type"
    t.integer  "userable_id"
    t.integer  "status"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.integer  "failed_attempts",        default: 0
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "address_one"
    t.string   "address_two"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "postal_code"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
