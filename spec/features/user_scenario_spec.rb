require 'rails_helper'
require 'date'

describe 'navigation' do 
	describe 'creation' do 
		it 'can be succesfully created' do 
			visit new_user_scenario_path 
			fill_in 'user_scenario[start_date]', with: Date.today
			fill_in 'user_scenario[number_days]', with: 30
			fill_in 'user_scenario[initial_lended_amount]', with: 300

			click_on 'Submit'

			expect(page).to have_content(Date.today)
		end
	end

	describe 'editing' do 
		it 'can be edited' do 
			@tier_2 = TierLiteral.create(tier_name:'tier_2', tier_pct:0.001, tier_days:100, tier_min:1000.00, tier_max:14999.99)
			@tier_3 = TierLiteral.create(tier_name:'tier_3', tier_pct:0.002, tier_days:80, tier_min:15000.00, tier_max:49999.99)
			@tier_4 = TierLiteral.create(tier_name:'tier_4', tier_pct:0.003, tier_days:60, tier_min:50000.00, tier_max:100000.00)
			@user_scenario = UserScenario.create(start_date: Date.today, number_days: 30, initial_lended_amount: 300)
			visit edit_user_scenario_path(@user_scenario.id)
			fill_in 'user_scenario[number_days]', with: 60

			click_on 'Submit'
			expect(page).to have_content(60)
		end
	end
end