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

ActiveRecord::Schema.define(version: 2021_10_08_234108) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "agricultural_companies", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "phone"
    t.string "responsable"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "devices", force: :cascade do |t|
    t.string "name"
    t.float "capacity"
    t.boolean "status"
    t.bigint "agricultural_companies_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["agricultural_companies_id"], name: "index_devices_on_agricultural_companies_id"
  end

  create_table "green_houses", force: :cascade do |t|
    t.string "code_greenhouse"
    t.float "area_grooves"
    t.boolean "status"
    t.bigint "agricultural_companies_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["agricultural_companies_id"], name: "index_green_houses_on_agricultural_companies_id"
  end

  create_table "imagens", force: :cascade do |t|
    t.string "des"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "routes", force: :cascade do |t|
    t.float "height"
    t.float "latitude"
    t.float "longitud"
    t.boolean "status"
    t.bigint "devices_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["devices_id"], name: "index_routes_on_devices_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "devices", "agricultural_companies", column: "agricultural_companies_id"
  add_foreign_key "green_houses", "agricultural_companies", column: "agricultural_companies_id"
  add_foreign_key "routes", "devices", column: "devices_id"
end
