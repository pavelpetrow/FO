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

ActiveRecord::Schema.define(version: 20180207104048) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "flats", force: :cascade do |t|
    t.integer  "number",                    null: false
    t.integer  "number_of_rooms",           null: false
    t.integer  "area",                      null: false
    t.string   "status",                    null: false
    t.money    "price_per_month", scale: 2, null: false
    t.string   "description"
    t.integer  "house_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "flats", ["house_id"], name: "index_flats_on_house_id", using: :btree

  create_table "houses", force: :cascade do |t|
    t.integer  "number",      null: false
    t.string   "country",     null: false
    t.string   "state"
    t.string   "region"
    t.string   "city",        null: false
    t.string   "street",      null: false
    t.integer  "postal_code"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "lodgers", force: :cascade do |t|
    t.string   "full_name",       null: false
    t.integer  "years_old"
    t.date     "date_of_arrival", null: false
    t.integer  "flat_id"
    t.string   "description"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "lodgers", ["flat_id"], name: "index_lodgers_on_flat_id", using: :btree

  create_table "payments", force: :cascade do |t|
    t.money    "amount",      scale: 2, null: false
    t.integer  "lodger_id"
    t.string   "description"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "payments", ["lodger_id"], name: "index_payments_on_lodger_id", using: :btree

  add_foreign_key "flats", "houses"
  add_foreign_key "lodgers", "flats"
  add_foreign_key "payments", "lodgers"
end
