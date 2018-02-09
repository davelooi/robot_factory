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

ActiveRecord::Schema.define(version: 20180209223353) do

  create_table "conditions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "configurations", force: :cascade do |t|
    t.integer "robot_id"
    t.boolean "has_sentience"
    t.boolean "has_wheels"
    t.boolean "has_tracks"
    t.integer "num_of_rotors"
    t.string "colour"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["robot_id"], name: "index_configurations_on_robot_id"
  end

  create_table "robots", force: :cascade do |t|
    t.string "name"
    t.boolean "on_fire"
    t.boolean "rusty"
    t.boolean "loose_screws"
    t.boolean "paint_scratched"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
