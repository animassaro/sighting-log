# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025_08_05_183836) do
  create_table "ages", force: :cascade do |t|
    t.string "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.integer "user_id"
    t.string "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "city"
    t.string "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sexes", force: :cascade do |t|
    t.string "sex"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sightings", force: :cascade do |t|
    t.integer "user_id"
    t.integer "specie_id"
    t.integer "location_id"
    t.integer "sex_id"
    t.integer "status_id"
    t.integer "age_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["age_id"], name: "index_sightings_on_age_id"
    t.index ["location_id"], name: "index_sightings_on_location_id"
    t.index ["sex_id"], name: "index_sightings_on_sex_id"
    t.index ["specie_id"], name: "index_sightings_on_specie_id"
    t.index ["status_id"], name: "index_sightings_on_status_id"
    t.index ["user_id"], name: "index_sightings_on_user_id"
  end

  create_table "species", force: :cascade do |t|
    t.string "common_name"
    t.string "scientific_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "statuses", force: :cascade do |t|
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "permissions"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end
