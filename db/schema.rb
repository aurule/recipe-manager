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

ActiveRecord::Schema.define(version: 2018_07_12_190937) do

  create_table "cooking_times", force: :cascade do |t|
    t.integer "prep_time", default: 0, null: false
    t.integer "active_time", default: 0, null: false
    t.integer "passive_time", default: 0, null: false
    t.integer "total_time", default: 0, null: false
    t.string "timeable_type"
    t.integer "timeable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["timeable_type", "timeable_id"], name: "index_cooking_times_on_timeable_type_and_timeable_id"
  end

  create_table "ingredients", force: :cascade do |t|
    t.integer "recipe_id"
    t.string "name", null: false
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recipe_id"], name: "index_ingredients_on_recipe_id"
  end

  create_table "quantities", force: :cascade do |t|
    t.float "amount", null: false
    t.string "unit", null: false
    t.string "quantable_type"
    t.integer "quantable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["quantable_type", "quantable_id"], name: "index_quantities_on_quantable_type_and_quantable_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "title", null: false
    t.text "description", default: "", null: false
    t.string "attribution"
    t.string "cuisine"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "current_revision_id"
  end

  create_table "revision_ingredients", force: :cascade do |t|
    t.integer "revision_id"
    t.integer "ingredient_id"
    t.text "notes"
    t.integer "order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ingredient_id"], name: "index_revision_ingredients_on_ingredient_id"
    t.index ["revision_id"], name: "index_revision_ingredients_on_revision_id"
    t.index [nil, "order"], name: "index_revision_ingredients_on_revision_and_order", unique: true
  end

  create_table "revision_steps", force: :cascade do |t|
    t.integer "revision_id"
    t.integer "step_id"
    t.integer "order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["revision_id"], name: "index_revision_steps_on_revision_id"
    t.index ["step_id"], name: "index_revision_steps_on_step_id"
    t.index [nil, "order"], name: "index_revision_steps_on_revision_and_order", unique: true
    t.index [nil, nil], name: "index_revision_steps_on_revision_and_step", unique: true
  end

  create_table "revisions", force: :cascade do |t|
    t.integer "recipe_id"
    t.string "notes"
    t.integer "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recipe_id"], name: "index_revisions_on_recipe_id"
  end

  create_table "steps", force: :cascade do |t|
    t.string "title"
    t.text "description", null: false
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_configs", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "temperature_unit", default: "F", null: false
    t.string "measurement_system", default: "imperial", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_configs_on_user_id"
  end

  create_table "user_recipes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "recipe_id"
    t.integer "original_recipe_id"
    t.boolean "public_access", default: false, null: false
    t.boolean "allow_copy", default: false, null: false
    t.string "permalink"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["original_recipe_id"], name: "index_user_recipes_on_original_recipe_id"
    t.index ["recipe_id"], name: "index_user_recipes_on_recipe_id"
    t.index ["user_id"], name: "index_user_recipes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
