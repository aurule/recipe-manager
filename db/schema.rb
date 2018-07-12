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

ActiveRecord::Schema.define(version: 2018_07_12_163943) do

  create_table "cooking_times", force: :cascade do |t|
    t.integer "prep_time", default: 0, null: false
    t.integer "active_time", default: 0, null: false
    t.integer "passive_time", default: 0, null: false
    t.integer "total_time", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quantities", force: :cascade do |t|
    t.float "amount", null: false
    t.string "unit", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recipes", force: :cascade do |t|
    t.integer "quantity_id"
    t.integer "cooking_time_id"
    t.string "title", null: false
    t.text "description", default: "", null: false
    t.string "attribution"
    t.string "cuisine"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cooking_time_id"], name: "index_recipes_on_cooking_time_id"
    t.index ["quantity_id"], name: "index_recipes_on_quantity_id"
  end

  create_table "user_configs", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "temperature_unit", default: "F", null: false
    t.string "measurement_system", default: "imperial", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_configs_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
