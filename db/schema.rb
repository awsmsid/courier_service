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

ActiveRecord::Schema.define(version: 2021_07_09_064438) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "orders", force: :cascade do |t|
    t.string "sender_full_name"
    t.string "sender_email_address"
    t.string "sender_address"
    t.string "sender_phone_number"
    t.integer "sender_pin_code"
    t.string "receiver_full_name"
    t.string "receiver_email_address"
    t.string "receiver_address"
    t.string "receiver_phone_number"
    t.integer "receiver_pin_code"
    t.float "parcel_weight"
    t.string "service_type"
    t.float "service_cost"
    t.string "payment_mode"
    t.string "status"
    t.string "tracking_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["tracking_id"], name: "index_orders_on_tracking_id"
  end

end
