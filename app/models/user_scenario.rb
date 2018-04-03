class UserScenario < ApplicationRecord
  belongs_to :user, required: false
  has_many :new_investments

  validates_presence_of :start_date, :number_days, :initial_lended_amount
end
