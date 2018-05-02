class AddForeignKeys2 < ActiveRecord::Migration[5.0]
  def change
  	remove_foreign_key :add_investment_months, :user_scenarios
  	add_foreign_key :add_investment_months, :user_scenarios, on_delete: :cascade
  end
end
