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

ActiveRecord::Schema.define(version: 2021_09_30_061903) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "incidents", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "impact"
    t.datetime "happended_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "service_incidents", force: :cascade do |t|
    t.bigint "incident_id", null: false
    t.bigint "service_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["incident_id"], name: "index_service_incidents_on_incident_id"
    t.index ["service_id"], name: "index_service_incidents_on_service_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.boolean "operational"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "updates", force: :cascade do |t|
    t.bigint "incident_id", null: false
    t.string "message"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["incident_id"], name: "index_updates_on_incident_id"
  end

  add_foreign_key "service_incidents", "incidents"
  add_foreign_key "service_incidents", "services"
  add_foreign_key "updates", "incidents"
end
