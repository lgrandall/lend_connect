class CreateAddInvestments < ActiveRecord::Migration[5.0]
  def change
    create_table :add_investments do |t|
      t.references :user, foreign_key: true
      t.references :user_scenario, foreign_key: true
      t.boolean :newinvest_sun, default: false
      t.decimal :newinvest_amt_sun, precision: 10, scale: 2
      t.boolean :newinvest_mon, default: false
      t.decimal :newinvest_amt_mon, precision: 10, scale: 2
      t.boolean :newinvest_tue, default: false
      t.decimal :newinvest_amt_tue, precision: 10, scale: 2
      t.boolean :newinvest_wed, default: false
      t.decimal :newinvest_amt_wed, precision: 10, scale: 2
      t.boolean :newinvest_thu, default: false
      t.decimal :newinvest_amt_thu, precision: 10, scale: 2
      t.boolean :newinvest_fri, default: false
      t.decimal :newinvest_amt_fri, precision: 10, scale: 2
      t.boolean :newinvest_sat, default: false
      t.decimal :newinvest_amt_sat, precision: 10, scale: 2
      t.boolean :newinvest_month_day_1, default: false
      t.decimal :newinvest_month_day_1_amt, precision: 10, scale: 2
      t.boolean :newinvest_month_day_2, default: false
      t.decimal :newinvest_month_day_2_amt, precision: 10, scale: 2
      t.boolean :newinvest_month_day_3, default: false
      t.decimal :newinvest_month_day_3_amt, precision: 10, scale: 2
      t.boolean :newinvest_month_day_4, default: false
      t.decimal :newinvest_month_day_4_amt, precision: 10, scale: 2
      t.boolean :newinvest_month_day_5, default: false
      t.decimal :newinvest_month_day_5_amt, precision: 10, scale: 2
      t.boolean :newinvest_month_day_6, default: false
      t.decimal :newinvest_month_day_6_amt, precision: 10, scale: 2
      t.boolean :newinvest_month_day_7, default: false
      t.decimal :newinvest_month_day_7_amt, precision: 10, scale: 2
      t.boolean :newinvest_month_day_8, default: false
      t.decimal :newinvest_month_day_8_amt, precision: 10, scale: 2
      t.boolean :newinvest_month_day_9, default: false
      t.decimal :newinvest_month_day_9_amt, precision: 10, scale: 2
      t.boolean :newinvest_month_day_10, default: false
      t.decimal :newinvest_month_day_10_amt, precision: 10, scale: 2
      t.boolean :newinvest_month_day_11, default: false
      t.decimal :newinvest_month_day_11_amt, precision: 10, scale: 2
      t.boolean :newinvest_month_day_12, default: false
      t.decimal :newinvest_month_day_12_amt, precision: 10, scale: 2
      t.boolean :newinvest_month_day_13, default: false
      t.decimal :newinvest_month_day_13_amt, precision: 10, scale: 2
      t.boolean :newinvest_month_day_14, default: false
      t.decimal :newinvest_month_day_14_amt, precision: 10, scale: 2
      t.boolean :newinvest_month_day_15, default: false
      t.decimal :newinvest_month_day_15_amt, precision: 10, scale: 2
      t.boolean :newinvest_month_day_16, default: false
      t.decimal :newinvest_month_day_16_amt, precision: 10, scale: 2
      t.boolean :newinvest_month_day_17, default: false
      t.decimal :newinvest_month_day_17_amt, precision: 10, scale: 2
      t.boolean :newinvest_month_day_18, default: false
      t.decimal :newinvest_month_day_18_amt, precision: 10, scale: 2
      t.boolean :newinvest_month_day_19, default: false
      t.decimal :newinvest_month_day_19_amt, precision: 10, scale: 2
      t.boolean :newinvest_month_day_20, default: false
      t.decimal :newinvest_month_day_20_amt, precision: 10, scale: 2
      t.boolean :newinvest_month_day_21, default: false
      t.decimal :newinvest_month_day_21_amt, precision: 10, scale: 2
      t.boolean :newinvest_month_day_22, default: false
      t.decimal :newinvest_month_day_22_amt, precision: 10, scale: 2
      t.boolean :newinvest_month_day_23, default: false
      t.decimal :newinvest_month_day_23_amt, precision: 10, scale: 2
      t.boolean :newinvest_month_day_24, default: false
      t.decimal :newinvest_month_day_24_amt, precision: 10, scale: 2
      t.boolean :newinvest_month_day_25, default: false
      t.decimal :newinvest_month_day_25_amt, precision: 10, scale: 2
      t.boolean :newinvest_month_day_26, default: false
      t.decimal :newinvest_month_day_26_amt, precision: 10, scale: 2
      t.boolean :newinvest_month_day_27, default: false
      t.decimal :newinvest_month_day_27_amt, precision: 10, scale: 2
      t.boolean :newinvest_month_day_28, default: false
      t.decimal :newinvest_month_day_28_amt, precision: 10, scale: 2
      t.boolean :newinvest_month_day_29, default: false
      t.decimal :newinvest_month_day_29_amt, precision: 10, scale: 2
      t.boolean :newinvest_month_day_30, default: false
      t.decimal :newinvest_month_day_30_amt, precision: 10, scale: 2

      t.timestamps
    end
  end
end
