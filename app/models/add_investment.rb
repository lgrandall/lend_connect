class AddInvestment < ApplicationRecord
  belongs_to :user
  belongs_to :user_scenario
end
