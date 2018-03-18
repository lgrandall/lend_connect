class AddTierNameToTierLiterals < ActiveRecord::Migration[5.0]
  def change
    add_column :tier_literals, :tier_name, :string
  end
end
