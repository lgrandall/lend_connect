# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180424005151) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "add_investment_months", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "user_scenario_id"
    t.boolean  "newinvest_month_day_1"
    t.decimal  "newinvest_month_day_1_amt",  precision: 10, scale: 2
    t.boolean  "newinvest_month_day_2"
    t.decimal  "newinvest_month_day_2_amt",  precision: 10, scale: 2
    t.boolean  "newinvest_month_day_3"
    t.decimal  "newinvest_month_day_3_amt",  precision: 10, scale: 2
    t.boolean  "newinvest_month_day_4"
    t.decimal  "newinvest_month_day_4_amt",  precision: 10, scale: 2
    t.boolean  "newinvest_month_day_5"
    t.decimal  "newinvest_month_day_5_amt",  precision: 10, scale: 2
    t.boolean  "newinvest_month_day_6"
    t.decimal  "newinvest_month_day_6_amt",  precision: 10, scale: 2
    t.boolean  "newinvest_month_day_7"
    t.decimal  "newinvest_month_day_7_amt",  precision: 10, scale: 2
    t.boolean  "newinvest_month_day_8"
    t.decimal  "newinvest_month_day_8_amt",  precision: 10, scale: 2
    t.boolean  "newinvest_month_day_9"
    t.decimal  "newinvest_month_day_9_amt",  precision: 10, scale: 2
    t.boolean  "newinvest_month_day_10"
    t.decimal  "newinvest_month_day_10_amt", precision: 10, scale: 2
    t.boolean  "newinvest_month_day_11"
    t.decimal  "newinvest_month_day_11_amt", precision: 10, scale: 2
    t.boolean  "newinvest_month_day_12"
    t.decimal  "newinvest_month_day_12_amt", precision: 10, scale: 2
    t.boolean  "newinvest_month_day_13"
    t.decimal  "newinvest_month_day_13_amt", precision: 10, scale: 2
    t.boolean  "newinvest_month_day_14"
    t.decimal  "newinvest_month_day_14_amt", precision: 10, scale: 2
    t.boolean  "newinvest_month_day_15"
    t.decimal  "newinvest_month_day_15_amt", precision: 10, scale: 2
    t.boolean  "newinvest_month_day_16"
    t.decimal  "newinvest_month_day_16_amt", precision: 10, scale: 2
    t.boolean  "newinvest_month_day_17"
    t.decimal  "newinvest_month_day_17_amt", precision: 10, scale: 2
    t.boolean  "newinvest_month_day_18"
    t.decimal  "newinvest_month_day_18_amt", precision: 10, scale: 2
    t.boolean  "newinvest_month_day_19"
    t.decimal  "newinvest_month_day_19_amt", precision: 10, scale: 2
    t.boolean  "newinvest_month_day_20"
    t.decimal  "newinvest_month_day_20_amt", precision: 10, scale: 2
    t.boolean  "newinvest_month_day_21"
    t.decimal  "newinvest_month_day_21_amt", precision: 10, scale: 2
    t.boolean  "newinvest_month_day_22"
    t.decimal  "newinvest_month_day_22_amt", precision: 10, scale: 2
    t.boolean  "newinvest_month_day_23"
    t.decimal  "newinvest_month_day_23_amt", precision: 10, scale: 2
    t.boolean  "newinvest_month_day_24"
    t.decimal  "newinvest_month_day_24_amt", precision: 10, scale: 2
    t.boolean  "newinvest_month_day_25"
    t.decimal  "newinvest_month_day_25_amt", precision: 10, scale: 2
    t.boolean  "newinvest_month_day_26"
    t.decimal  "newinvest_month_day_26_amt", precision: 10, scale: 2
    t.boolean  "newinvest_month_day_27"
    t.decimal  "newinvest_month_day_27_amt", precision: 10, scale: 2
    t.boolean  "newinvest_month_day_28"
    t.decimal  "newinvest_month_day_28_amt", precision: 10, scale: 2
    t.boolean  "newinvest_month_day_29"
    t.decimal  "newinvest_month_day_29_amt", precision: 10, scale: 2
    t.boolean  "newinvest_month_day_30"
    t.decimal  "newinvest_month_day_30_amt", precision: 10, scale: 2
    t.datetime "created_at",                                          null: false
    t.datetime "updated_at",                                          null: false
    t.index ["user_id"], name: "index_add_investment_months_on_user_id", using: :btree
    t.index ["user_scenario_id"], name: "index_add_investment_months_on_user_scenario_id", using: :btree
  end

  create_table "add_investments", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "user_scenario_id"
    t.boolean  "newinvest_sun",                                       default: false
    t.decimal  "newinvest_amt_sun",          precision: 10, scale: 2
    t.boolean  "newinvest_mon",                                       default: false
    t.decimal  "newinvest_amt_mon",          precision: 10, scale: 2
    t.boolean  "newinvest_tue",                                       default: false
    t.decimal  "newinvest_amt_tue",          precision: 10, scale: 2
    t.boolean  "newinvest_wed",                                       default: false
    t.decimal  "newinvest_amt_wed",          precision: 10, scale: 2
    t.boolean  "newinvest_thu",                                       default: false
    t.decimal  "newinvest_amt_thu",          precision: 10, scale: 2
    t.boolean  "newinvest_fri",                                       default: false
    t.decimal  "newinvest_amt_fri",          precision: 10, scale: 2
    t.boolean  "newinvest_sat",                                       default: false
    t.decimal  "newinvest_amt_sat",          precision: 10, scale: 2
    t.boolean  "newinvest_month_day_1",                               default: false
    t.decimal  "newinvest_month_day_1_amt",  precision: 10, scale: 2
    t.boolean  "newinvest_month_day_2",                               default: false
    t.decimal  "newinvest_month_day_2_amt",  precision: 10, scale: 2
    t.boolean  "newinvest_month_day_3",                               default: false
    t.decimal  "newinvest_month_day_3_amt",  precision: 10, scale: 2
    t.boolean  "newinvest_month_day_4",                               default: false
    t.decimal  "newinvest_month_day_4_amt",  precision: 10, scale: 2
    t.boolean  "newinvest_month_day_5",                               default: false
    t.decimal  "newinvest_month_day_5_amt",  precision: 10, scale: 2
    t.boolean  "newinvest_month_day_6",                               default: false
    t.decimal  "newinvest_month_day_6_amt",  precision: 10, scale: 2
    t.boolean  "newinvest_month_day_7",                               default: false
    t.decimal  "newinvest_month_day_7_amt",  precision: 10, scale: 2
    t.boolean  "newinvest_month_day_8",                               default: false
    t.decimal  "newinvest_month_day_8_amt",  precision: 10, scale: 2
    t.boolean  "newinvest_month_day_9",                               default: false
    t.decimal  "newinvest_month_day_9_amt",  precision: 10, scale: 2
    t.boolean  "newinvest_month_day_10",                              default: false
    t.decimal  "newinvest_month_day_10_amt", precision: 10, scale: 2
    t.boolean  "newinvest_month_day_11",                              default: false
    t.decimal  "newinvest_month_day_11_amt", precision: 10, scale: 2
    t.boolean  "newinvest_month_day_12",                              default: false
    t.decimal  "newinvest_month_day_12_amt", precision: 10, scale: 2
    t.boolean  "newinvest_month_day_13",                              default: false
    t.decimal  "newinvest_month_day_13_amt", precision: 10, scale: 2
    t.boolean  "newinvest_month_day_14",                              default: false
    t.decimal  "newinvest_month_day_14_amt", precision: 10, scale: 2
    t.boolean  "newinvest_month_day_15",                              default: false
    t.decimal  "newinvest_month_day_15_amt", precision: 10, scale: 2
    t.boolean  "newinvest_month_day_16",                              default: false
    t.decimal  "newinvest_month_day_16_amt", precision: 10, scale: 2
    t.boolean  "newinvest_month_day_17",                              default: false
    t.decimal  "newinvest_month_day_17_amt", precision: 10, scale: 2
    t.boolean  "newinvest_month_day_18",                              default: false
    t.decimal  "newinvest_month_day_18_amt", precision: 10, scale: 2
    t.boolean  "newinvest_month_day_19",                              default: false
    t.decimal  "newinvest_month_day_19_amt", precision: 10, scale: 2
    t.boolean  "newinvest_month_day_20",                              default: false
    t.decimal  "newinvest_month_day_20_amt", precision: 10, scale: 2
    t.boolean  "newinvest_month_day_21",                              default: false
    t.decimal  "newinvest_month_day_21_amt", precision: 10, scale: 2
    t.boolean  "newinvest_month_day_22",                              default: false
    t.decimal  "newinvest_month_day_22_amt", precision: 10, scale: 2
    t.boolean  "newinvest_month_day_23",                              default: false
    t.decimal  "newinvest_month_day_23_amt", precision: 10, scale: 2
    t.boolean  "newinvest_month_day_24",                              default: false
    t.decimal  "newinvest_month_day_24_amt", precision: 10, scale: 2
    t.boolean  "newinvest_month_day_25",                              default: false
    t.decimal  "newinvest_month_day_25_amt", precision: 10, scale: 2
    t.boolean  "newinvest_month_day_26",                              default: false
    t.decimal  "newinvest_month_day_26_amt", precision: 10, scale: 2
    t.boolean  "newinvest_month_day_27",                              default: false
    t.decimal  "newinvest_month_day_27_amt", precision: 10, scale: 2
    t.boolean  "newinvest_month_day_28",                              default: false
    t.decimal  "newinvest_month_day_28_amt", precision: 10, scale: 2
    t.boolean  "newinvest_month_day_29",                              default: false
    t.decimal  "newinvest_month_day_29_amt", precision: 10, scale: 2
    t.boolean  "newinvest_month_day_30",                              default: false
    t.decimal  "newinvest_month_day_30_amt", precision: 10, scale: 2
    t.datetime "created_at",                                                          null: false
    t.datetime "updated_at",                                                          null: false
    t.index ["user_id"], name: "index_add_investments_on_user_id", using: :btree
    t.index ["user_scenario_id"], name: "index_add_investments_on_user_scenario_id", using: :btree
  end

  create_table "tier_literals", force: :cascade do |t|
    t.decimal  "tier_pct",   precision: 3,  scale: 3
    t.integer  "tier_days"
    t.decimal  "tier_min",   precision: 10, scale: 2
    t.decimal  "tier_max",   precision: 10, scale: 2
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "tier_name"
  end

  create_table "user_scenarios", force: :cascade do |t|
    t.integer  "user_id"
    t.date     "start_date"
    t.integer  "number_days"
    t.decimal  "initial_lended_amount", precision: 10, scale: 2
    t.decimal  "average_interest",      precision: 4,  scale: 3
    t.decimal  "withdraw_at",           precision: 10, scale: 2
    t.decimal  "withdraw_percent"
    t.decimal  "reinvest_1010"
    t.decimal  "reinvest_5010"
    t.decimal  "reinvest_10010"
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
    t.index ["user_id"], name: "index_user_scenarios_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "add_investment_months", "user_scenarios"
  add_foreign_key "add_investment_months", "users"
  add_foreign_key "add_investments", "user_scenarios"
  add_foreign_key "add_investments", "users"
  add_foreign_key "user_scenarios", "users"
end
