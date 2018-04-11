class AddInvestment < ApplicationRecord
  belongs_to :user, required: false
  belongs_to :user_scenario, required: false

end
