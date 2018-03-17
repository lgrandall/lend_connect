class UserScenario < ApplicationRecord
  belongs_to :user, required: false

  validates_presence_of :start_date, :number_days, :initial_lended_amount
end
