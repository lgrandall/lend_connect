class CreateTierLiterals < ActiveRecord::Migration[5.0]
  def change
    create_table :tier_literals do |t|
      t.decimal :tier_pct, precision: 3, scale: 3
      t.integer :tier_days
      t.decimal :tier_min, precision: 10, scale: 2
      t.decimal :tier_max, precision: 10, scale: 2

      t.timestamps
    end
  end
end
