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

ActiveRecord::Schema.define(version: 20150208092838) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alliance_gardens", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.string   "manager"
    t.string   "mobile"
    t.string   "phone"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "carts", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "line_items", force: true do |t|
    t.integer  "product_id"
    t.integer  "cart_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "quantity",   default: 1
    t.integer  "order_id"
  end

  create_table "members", force: true do |t|
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
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "order_name"
    t.string   "phone"
    t.text     "address"
    t.string   "pay_type"
    t.string   "register_time"
  end

  add_index "members", ["confirmation_token"], name: "index_members_on_confirmation_token", unique: true, using: :btree
  add_index "members", ["email"], name: "index_members_on_email", unique: true, using: :btree
  add_index "members", ["reset_password_token"], name: "index_members_on_reset_password_token", unique: true, using: :btree
  add_index "members", ["unlock_token"], name: "index_members_on_unlock_token", unique: true, using: :btree

  create_table "newslists", force: true do |t|
    t.string   "title"
    t.string   "posttime"
    t.text     "content"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.text     "address"
    t.string   "pay_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "image_url"
    t.decimal  "price",               precision: 8, scale: 0
    t.text     "detail_text_1"
    t.string   "detail_image_url_1"
    t.text     "detail_text_2"
    t.string   "detail_image_url_2"
    t.text     "detail_text_3"
    t.string   "detail_image_url_3"
    t.text     "detail_text_4"
    t.string   "detail_image_url_4"
    t.text     "detail_text_5"
    t.string   "detail_image_url_5"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "detail_image_url_6"
    t.text     "detail_text_7"
    t.string   "detail_image_url_7"
    t.text     "detail_text_8"
    t.string   "detail_image_url_8"
    t.text     "detail_text_9"
    t.string   "detail_image_url_9"
    t.text     "detail_text_10"
    t.string   "detail_image_url_10"
    t.text     "detail_text_11"
    t.string   "detail_image_url_11"
    t.text     "detail_text_12"
    t.string   "detail_image_url_12"
    t.text     "detail_text_13"
    t.string   "detail_image_url_13"
    t.text     "detail_text_14"
    t.string   "detail_image_url_14"
    t.text     "detail_text_15"
    t.string   "detail_image_url_15"
    t.text     "detail_text_6"
  end

  create_table "recipes", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "image_url"
    t.text     "detail_text_1"
    t.string   "detail_image_url_1"
    t.text     "detail_text_2"
    t.string   "detail_image_url_2"
    t.text     "detail_text_3"
    t.string   "detail_image_url_3"
    t.text     "detail_text_4"
    t.string   "detail_image_url_4"
    t.text     "detail_text_5"
    t.string   "detail_image_url_5"
    t.text     "detail_text_6"
    t.string   "detail_image_url_6"
    t.text     "detail_text_7"
    t.string   "detail_image_url_7"
    t.text     "detail_text_8"
    t.string   "detail_image_url_8"
    t.text     "detail_text_9"
    t.string   "detail_image_url_9"
    t.text     "detail_text_10"
    t.string   "detail_image_url_10"
    t.text     "detail_text_11"
    t.string   "detail_image_url_11"
    t.text     "detail_text_12"
    t.string   "detail_image_url_12"
    t.text     "detail_text_13"
    t.string   "detail_image_url_13"
    t.text     "detail_text_14"
    t.string   "detail_image_url_14"
    t.text     "detail_text_15"
    t.string   "detail_image_url_15"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stories", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "hashed_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
