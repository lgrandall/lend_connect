class AddInvestmentMonth < ApplicationRecord
	model_name.instance_variable_set :@route_key, 'add_investment_month'
  belongs_to :user
  belongs_to :user_scenario
end
