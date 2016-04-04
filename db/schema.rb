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

ActiveRecord::Schema.define(version: 20160404175039) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "things", force: :cascade do |t|
    t.integer  "creator_id"
    t.string   "title"
    t.string   "location"
    t.string   "description"
    t.integer  "price"
    t.string   "image_1"
    t.string   "image_2"
    t.string   "btc_qr"
    t.string   "website"
    t.string   "checkout_cc"
    t.string   "checkout_btc"
    t.string   "hashtag"
    t.integer  "view_count"
    t.integer  "age"
    t.string   "special_offer"
    t.string   "broadcast"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.text     "bio"
    t.string   "email"
    t.string   "location"
    t.string   "phone"
    t.string   "twitter"
    t.string   "facebook"
    t.string   "farmer_or_pirate"
    t.string   "logo"
    t.string   "wallpaper"
    t.string   "hashtag"
    t.string   "campaign"
    t.string   "crowdfund"
    t.string   "store"
    t.integer  "view_count"
    t.string   "password_digest"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

end
