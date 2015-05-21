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

ActiveRecord::Schema.define(version: 20150519082719) do

  create_table "daily_prices", force: :cascade do |t|
    t.integer  "futures_target_id", limit: 4,                            null: false
    t.date     "date",                                                   null: false
    t.decimal  "open",                        precision: 10, default: 0
    t.decimal  "high",                        precision: 10, default: 0
    t.decimal  "low",                         precision: 10, default: 0
    t.decimal  "close",                       precision: 10, default: 0, null: false
    t.integer  "volumn",            limit: 4,                default: 0
    t.datetime "created_at",                                             null: false
    t.datetime "updated_at",                                             null: false
  end

  create_table "futures_targets", force: :cascade do |t|
    t.string   "name",       limit: 255, null: false
    t.string   "info",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "futures_targets", ["name"], name: "index_futures_targets_on_name", unique: true, using: :btree

end
