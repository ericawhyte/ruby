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

ActiveRecord::Schema.define(version: 20180707164516) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "encounters", force: :cascade do |t|
    t.string   "visit_number"
    t.datetime "admitted_at"
    t.datetime "discharged_at"
    t.string   "location"
    t.string   "room"
    t.string   "bed"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "patients", force: :cascade do |t|
    t.text     "first_name"
    t.text     "middle_name"
    t.text     "last_name"
    t.integer  "weight"
    t.integer  "height"
    t.string   "mrn"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end