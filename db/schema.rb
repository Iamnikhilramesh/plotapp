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

ActiveRecord::Schema.define(version: 2021_07_08_133948) do

  create_table "orders", force: :cascade do |t|
    t.string "admin_reference"
    t.string "state"
    t.string "payment_state"
    t.string "shipment_state"
    t.float "total"
    t.string "currency"
    t.string "bill_city"
    t.integer "bill_zipcode"
    t.string "bill_country_iso_name"
    t.string "ship_city"
    t.integer "ship_zipcode"
    t.string "ship_country_iso_name"
    t.string "product_name"
    t.integer "quantity"
    t.string "sku"
    t.date "completed_at_y"
    t.date "Date"
    t.string "Time"
    t.integer "Year"
    t.string "Month"
    t.integer "Day"
    t.integer "Hour"
    t.integer "Minute"
    t.string "DayofWeek"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
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

end
