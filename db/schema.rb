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

ActiveRecord::Schema.define(version: 2022_06_02_150534) do

  create_table "budget_items", force: :cascade do |t|
    t.integer "number"
    t.string "unit"
    t.float "cost_per_unit"
    t.float "total"
    t.boolean "subcontracted?"
    t.integer "project_id"
  end

  create_table "general_contractors", force: :cascade do |t|
    t.string "company_name"
    t.string "address"
    t.string "email"
    t.string "password_digest"
  end

  create_table "projects", force: :cascade do |t|
    t.string "title"
    t.string "location"
    t.string "description"
    t.string "sector"
    t.string "phase"
    t.integer "size"
    t.integer "duration"
    t.integer "total_cost"
    t.date "start_date"
    t.integer "general_contractor_id"
  end

end
