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

ActiveRecord::Schema.define(version: 20131206121657) do

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
    t.string   "cust_name"
    t.string   "cus_email"
    t.integer  "cus_phone_no"
    t.string   "cus_password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "os_order_products", force: true do |t|
    t.integer  "op_quantity"
    t.integer  "os_product_id"
    t.integer  "os_order_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "os_orders", force: true do |t|
    t.date     "ord_date"
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
