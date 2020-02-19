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

ActiveRecord::Schema.define(version: 2020_02_19_111544) do

  create_table "sensor", primary_key: "name", id: :string, limit: 20, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.float "value", limit: 53, null: false
    t.string "unit", limit: 1
    t.string "type", limit: 20
    t.string "location", limit: 20
    t.date "lastu"
    t.time "time"
  end

  create_table "sensordata", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "location", limit: 20, null: false
    t.float "tempVal", limit: 53, null: false
    t.float "humVal", limit: 53, null: false
    t.timestamp "lastu", default: -> { "CURRENT_TIMESTAMP" }, null: false
  end

  create_table "tempbath", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.datetime "rec", null: false
    t.decimal "val", precision: 10, null: false
    t.string "name", limit: 30, null: false
    t.decimal "valH", precision: 10, null: false
  end

  create_table "tempkitchen", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.datetime "rec", null: false
    t.decimal "val", precision: 10, null: false
    t.string "name", limit: 30, null: false
    t.decimal "valH", precision: 10, null: false
  end

  create_table "templiving", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.datetime "rec", null: false
    t.decimal "val", precision: 10, null: false
    t.string "name", limit: 30, null: false
    t.decimal "valH", precision: 10, null: false
  end

  create_table "temprooms", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.datetime "rec"
    t.float "val", limit: 53
    t.string "name", limit: 20
    t.float "valH", limit: 53
  end

  create_table "tempvalues", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "room"
    t.decimal "valH", precision: 10
    t.decimal "valT", precision: 10
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
