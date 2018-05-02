class AddForeignKeys < ActiveRecord::Migration[5.0]
  def change
  	remove_foreign_key :add_investments, :user_scenarios
  	add_foreign_key :add_investments, :user_scenarios, on_delete: :cascade
  end
end
