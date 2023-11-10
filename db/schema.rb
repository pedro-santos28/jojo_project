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

ActiveRecord::Schema[7.0].define(version: 2023_11_10_152219) do
  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.string "japanese_name"
    t.string "image"
    t.string "nationality"
    t.string "catchphrase"
    t.string "family"
    t.string "chapter"
    t.boolean "living"
    t.boolean "is_human"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "characters_habilities", id: false, force: :cascade do |t|
    t.integer "characters_id", null: false
    t.integer "habilities_id", null: false
    t.index ["characters_id"], name: "index_characters_habilities_on_characters_id"
    t.index ["habilities_id"], name: "index_characters_habilities_on_habilities_id"
  end

  create_table "habilities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "characters_habilities", "characters", column: "characters_id"
  add_foreign_key "characters_habilities", "habilities", column: "habilities_id"
end
