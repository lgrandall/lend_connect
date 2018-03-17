class CreateUserScenarios < ActiveRecord::Migration[5.0]
  def change
    create_table :user_scenarios do |t|
      t.references :user, foreign_key: true
      t.date :start_date
      t.integer :number_days
      t.decimal :initial_lended_amount, precision: 10, scale: 2
      t.decimal :average_interest, precision: 4, scale: 3
      t.decimal :withdraw_at, precision: 10, scale: 2
      t.decimal :withdraw_percent
      t.decimal :reinvest_1010
      t.decimal :reinvest_5010
      t.decimal :reinvest_10010

      t.timestamps
    end
  end
end
