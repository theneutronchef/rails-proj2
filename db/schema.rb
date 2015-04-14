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

ActiveRecord::Schema.define(version: 20150414215623) do

  create_table "cars", force: true do |t|
    t.integer  "driver"
    t.integer  "number_of_seats"
    t.string   "origin"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "relations", force: true do |t|
    t.integer  "user_id"
    t.integer  "car_id"
    t.integer  "trip_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "relations", ["car_id"], name: "index_relations_on_car_id"
  add_index "relations", ["trip_id"], name: "index_relations_on_trip_id"
  add_index "relations", ["user_id"], name: "index_relations_on_user_id"

  create_table "trips", force: true do |t|
    t.string   "name"
    t.string   "hash"
    t.date     "date"
    t.time     "time"
    t.string   "destination"
    t.text     "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email_address"
    t.boolean  "is_driver"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
