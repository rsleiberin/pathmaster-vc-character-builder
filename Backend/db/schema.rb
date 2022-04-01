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

ActiveRecord::Schema.define(version: 9) do

  create_table "ancestries", force: :cascade do |t|
    t.integer "version_id"
    t.string "ancestry_name"
    t.integer "ancestry_speed"
    t.integer "ancestry_hit_points"
    t.integer "ancestry_size"
    t.integer "ancestry_strength"
    t.integer "ancestry_dexterity"
    t.integer "ancestry_constitution"
    t.integer "ancestry_intelligence"
    t.integer "ancestry_wisdom"
    t.integer "ancestry_charisma"
    t.integer "ancestry_vision"
    t.index ["version_id"], name: "index_ancestries_on_version_id"
  end

  create_table "character_classes", force: :cascade do |t|
    t.integer "version_id"
    t.index ["version_id"], name: "index_character_classes_on_version_id"
  end

  create_table "characters", force: :cascade do |t|
    t.integer "user_id"
    t.integer "primary_version"
    t.integer "work_in_progress"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_characters_on_user_id"
  end

  create_table "feats", force: :cascade do |t|
    t.string "feat_name"
    t.integer "feat_level"
  end

  create_table "heritages", force: :cascade do |t|
    t.integer "version_id"
    t.index ["version_id"], name: "index_heritages_on_version_id"
  end

  create_table "level_feats", force: :cascade do |t|
    t.integer "level_id"
    t.integer "feat_id"
    t.string "feat_source"
    t.string "feat_slot"
    t.index ["feat_id"], name: "index_level_feats_on_feat_id"
    t.index ["level_id"], name: "index_level_feats_on_level_id"
  end

  create_table "levels", force: :cascade do |t|
    t.integer "version_id"
    t.integer "level_number"
    t.index ["version_id"], name: "index_levels_on_version_id"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "versions", force: :cascade do |t|
    t.integer "character_id"
    t.string "version_name"
    t.string "first_name"
    t.string "last_name"
    t.string "middle_name"
    t.string "character_title"
    t.string "image"
    t.boolean "is_wip"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["character_id"], name: "index_versions_on_character_id"
  end

end
