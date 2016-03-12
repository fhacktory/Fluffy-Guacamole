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

ActiveRecord::Schema.define(version: 20160312173702) do

  create_table "benders", force: :cascade do |t|
    t.datetime "started_at"
    t.datetime "ended_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drinks", force: :cascade do |t|
    t.integer  "quantity"
    t.string   "name"
    t.integer  "proof"
    t.integer  "bender_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "drinks", ["bender_id"], name: "index_drinks_on_bender_id"

  create_table "positions", force: :cascade do |t|
    t.string   "longitude"
    t.string   "latitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "positions", ["user_id"], name: "index_positions_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.integer  "height"
    t.integer  "weight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
