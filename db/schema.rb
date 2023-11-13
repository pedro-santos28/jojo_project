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

ActiveRecord::Schema[7.0].define(version: 2023_11_10_200147) do
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

  create_table "characters_skills", id: false, force: :cascade do |t|
    t.integer "character_id", null: false
    t.integer "skill_id", null: false
    t.index ["character_id"], name: "index_characters_skills_on_character_id"
    t.index ["skill_id"], name: "index_characters_skills_on_skill_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stands", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.string "chapter"
    t.string "battlecry"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "character_id", null: false
    t.index ["character_id"], name: "index_stands_on_character_id"
  end

  add_foreign_key "characters_skills", "characters"
  add_foreign_key "characters_skills", "skills"
  add_foreign_key "stands", "characters"
end
