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

ActiveRecord::Schema.define(version: 20131209064710) do

  create_table "os_addresses", force: true do |t|
    t.text     "add_address"
    t.integer  "add_pincode"
    t.text     "add_landmark"
    t.string   "add_city"
    t.string   "add_state"
    t.string   "os_country"
    t.integer  "os_customer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "os_brands", force: true do |t|
    t.string   "br_name"
    t.integer  "os_category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "os_categories", force: true do |t|
    t.string   "cat_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "os_customers", force: true do |t|
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
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "cust_name"
    t.integer  "cust_phone_no"
    t.string   "cust_type"
  end

  add_index "os_customers", ["email"], name: "index_os_customers_on_email", unique: true, using: :btree
  add_index "os_customers", ["reset_password_token"], name: "index_os_customers_on_reset_password_token", unique: true, using: :btree

  create_table "os_order_products", force: true do |t|
    t.integer  "op_quantity"
    t.integer  "os_product_id"
    t.integer  "os_order_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "os_orders", force: true do |t|
    t.date     "ord_date"
    t.boolean  "ord_status"
    t.integer  "os_customer_id"
    t.integer  "os_shipment_detail_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "os_products", force: true do |t|
    t.string   "pro_name"
    t.decimal  "pro_price",        precision: 10, scale: 0
    t.text     "pro_feature"
    t.integer  "pro_availability"
    t.string   "pro_image"
    t.integer  "os_brand_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "os_shipment_details", force: true do |t|
    t.string   "shi_name"
    t.text     "shi_address"
    t.integer  "shi_pincode"
    t.text     "shi_landmark"
    t.string   "shi_city"
    t.string   "shi_state"
    t.integer  "shi_phone"
    t.string   "shi_country"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
