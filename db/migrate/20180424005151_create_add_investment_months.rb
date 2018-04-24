class CreateAddInvestmentMonths < ActiveRecord::Migration[5.0]
  def change
    create_table :add_investment_months do |t|
      t.references :user, foreign_key: true
      t.references :user_scenario, foreign_key: true
      t.boolean :newinvest_month_day_1
      t.decimal :newinvest_month_day_1_amt, precision: 10, scale: 2
      t.boolean :newinvest_month_day_2
      t.decimal :newinvest_month_day_2_amt, precision: 10, scale: 2
      t.boolean :newinvest_month_day_3
      t.decimal :newinvest_month_day_3_amt, precision: 10, scale: 2
      t.boolean :newinvest_month_day_4
      t.decimal :newinvest_month_day_4_amt, precision: 10, scale: 2
      t.boolean :newinvest_month_day_5
      t.decimal :newinvest_month_day_5_amt, precision: 10, scale: 2
      t.boolean :newinvest_month_day_6
      t.decimal :newinvest_month_day_6_amt, precision: 10, scale: 2
      t.boolean :newinvest_month_day_7
      t.decimal :newinvest_month_day_7_amt, precision: 10, scale: 2
      t.boolean :newinvest_month_day_8
      t.decimal :newinvest_month_day_8_amt, precision: 10, scale: 2
      t.boolean :newinvest_month_day_9
      t.decimal :newinvest_month_day_9_amt, precision: 10, scale: 2
      t.boolean :newinvest_month_day_10
      t.decimal :newinvest_month_day_10_amt, precision: 10, scale: 2
      t.boolean :newinvest_month_day_11
      t.decimal :newinvest_month_day_11_amt, precision: 10, scale: 2
      t.boolean :newinvest_month_day_12
      t.decimal :newinvest_month_day_12_amt, precision: 10, scale: 2
      t.boolean :newinvest_month_day_13
      t.decimal :newinvest_month_day_13_amt, precision: 10, scale: 2
      t.boolean :newinvest_month_day_14
      t.decimal :newinvest_month_day_14_amt, precision: 10, scale: 2
      t.boolean :newinvest_month_day_15
      t.decimal :newinvest_month_day_15_amt, precision: 10, scale: 2
      t.boolean :newinvest_month_day_16
      t.decimal :newinvest_month_day_16_amt, precision: 10, scale: 2
      t.boolean :newinvest_month_day_17
      t.decimal :newinvest_month_day_17_amt, precision: 10, scale: 2
      t.boolean :newinvest_month_day_18
      t.decimal :newinvest_month_day_18_amt, precision: 10, scale: 2
      t.boolean :newinvest_month_day_19
      t.decimal :newinvest_month_day_19_amt, precision: 10, scale: 2
      t.boolean :newinvest_month_day_20
      t.decimal :newinvest_month_day_20_amt, precision: 10, scale: 2
      t.boolean :newinvest_month_day_21
      t.decimal :newinvest_month_day_21_amt, precision: 10, scale: 2
      t.boolean :newinvest_month_day_22
      t.decimal :newinvest_month_day_22_amt, precision: 10, scale: 2
      t.boolean :newinvest_month_day_23
      t.decimal :newinvest_month_day_23_amt, precision: 10, scale: 2
      t.boolean :newinvest_month_day_24
      t.decimal :newinvest_month_day_24_amt, precision: 10, scale: 2
      t.boolean :newinvest_month_day_25
      t.decimal :newinvest_month_day_25_amt, precision: 10, scale: 2
      t.boolean :newinvest_month_day_26
      t.decimal :newinvest_month_day_26_amt, precision: 10, scale: 2
      t.boolean :newinvest_month_day_27
      t.decimal :newinvest_month_day_27_amt, precision: 10, scale: 2
      t.boolean :newinvest_month_day_28
      t.decimal :newinvest_month_day_28_amt, precision: 10, scale: 2
      t.boolean :newinvest_month_day_29
      t.decimal :newinvest_month_day_29_amt, precision: 10, scale: 2
      t.boolean :newinvest_month_day_30
      t.decimal :newinvest_month_day_30_amt, precision: 10, scale: 2

      t.timestamps
    end
  end
end
