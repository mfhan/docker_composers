# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_12_06_202257) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "composers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "birth_year"
    t.integer "death_year"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tunes", force: :cascade do |t|
    t.string "title"
    t.integer "date"
    t.bigint "composer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["composer_id"], name: "index_tunes_on_composer_id"
  end

  add_foreign_key "tunes", "composers"
end
