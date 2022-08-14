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

ActiveRecord::Schema[7.0].define(version: 2022_08_14_023404) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "force_units", force: :cascade do |t|
    t.bigint "force_id", null: false
    t.bigint "unit_id", null: false
    t.integer "cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["force_id"], name: "index_force_units_on_force_id"
    t.index ["unit_id"], name: "index_force_units_on_unit_id"
  end

  create_table "forces", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "models", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "code"
  end

  create_table "models_products", id: false, force: :cascade do |t|
    t.bigint "model_id", null: false
    t.bigint "product_id", null: false
  end

  create_table "models_units", id: false, force: :cascade do |t|
    t.bigint "model_id", null: false
    t.bigint "unit_id", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "code"
  end

  create_table "units", force: :cascade do |t|
    t.integer "wave"
    t.boolean "unique"
    t.string "name"
    t.integer "move_range"
    t.integer "charge_range"
    t.integer "strength"
    t.integer "perception"
    t.integer "endurance"
    t.integer "charisma"
    t.integer "intelligence"
    t.integer "agility"
    t.integer "luck"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "physical_armor"
    t.integer "physical_strong_armor_bonus"
    t.integer "energy_armor"
    t.integer "energy_strong_armor_bonus"
    t.boolean "radiation_immunity"
    t.integer "radiation_armor"
    t.integer "throw_range"
    t.integer "presence_range"
    t.integer "awareness_range"
    t.integer "battle_cry_range"
    t.integer "melee_attribute"
    t.integer "pistol_attribute"
    t.integer "rifle_attribute"
    t.integer "heavy_weapon_attribute"
    t.integer "search_attribute"
    t.integer "battle_cry_attribute"
    t.integer "presence_attribute"
    t.integer "lockpick_attribute"
    t.integer "computers_attribute"
    t.integer "throw_attribute"
    t.integer "health_attribute"
    t.integer "movement_quick_actions"
    t.integer "attack_quick_actions"
    t.integer "melee_quick_actions"
    t.integer "pistol_quick_actions"
    t.integer "rifle_quick_actions"
    t.integer "heavy_weapon_quick_actions"
    t.integer "target_quick_actions"
    t.integer "use_expertise_quick_actions"
    t.integer "prepare_quick_actions"
    t.boolean "has_vats_ability"
    t.boolean "has_critical_attacks_ability"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "force_units", "forces"
  add_foreign_key "force_units", "units"
end
