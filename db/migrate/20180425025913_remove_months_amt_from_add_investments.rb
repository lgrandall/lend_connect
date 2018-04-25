class RemoveMonthsAmtFromAddInvestments < ActiveRecord::Migration[5.0]
  def change
    remove_column :add_investments, :newinvest_month_day_1_amt, :decimal
    remove_column :add_investments, :newinvest_month_day_2_amt, :decimal
    remove_column :add_investments, :newinvest_month_day_3_amt, :decimal
    remove_column :add_investments, :newinvest_month_day_4_amt, :decimal
    remove_column :add_investments, :newinvest_month_day_5_amt, :decimal
    remove_column :add_investments, :newinvest_month_day_6_amt, :decimal
    remove_column :add_investments, :newinvest_month_day_7_amt, :decimal
    remove_column :add_investments, :newinvest_month_day_8_amt, :decimal
    remove_column :add_investments, :newinvest_month_day_9_amt, :decimal
    remove_column :add_investments, :newinvest_month_day_10_amt, :decimal
    remove_column :add_investments, :newinvest_month_day_11_amt, :decimal
    remove_column :add_investments, :newinvest_month_day_12_amt, :decimal
    remove_column :add_investments, :newinvest_month_day_13_amt, :decimal
    remove_column :add_investments, :newinvest_month_day_14_amt, :decimal
    remove_column :add_investments, :newinvest_month_day_15_amt, :decimal
    remove_column :add_investments, :newinvest_month_day_16_amt, :decimal
    remove_column :add_investments, :newinvest_month_day_17_amt, :decimal
    remove_column :add_investments, :newinvest_month_day_18_amt, :decimal
    remove_column :add_investments, :newinvest_month_day_19_amt, :decimal
    remove_column :add_investments, :newinvest_month_day_20_amt, :decimal
    remove_column :add_investments, :newinvest_month_day_21_amt, :decimal
    remove_column :add_investments, :newinvest_month_day_22_amt, :decimal
    remove_column :add_investments, :newinvest_month_day_23_amt, :decimal
    remove_column :add_investments, :newinvest_month_day_24_amt, :decimal
    remove_column :add_investments, :newinvest_month_day_25_amt, :decimal
    remove_column :add_investments, :newinvest_month_day_26_amt, :decimal
    remove_column :add_investments, :newinvest_month_day_27_amt, :decimal
    remove_column :add_investments, :newinvest_month_day_28_amt, :decimal
    remove_column :add_investments, :newinvest_month_day_29_amt, :decimal
    remove_column :add_investments, :newinvest_month_day_30_amt, :decimal
  end
end
