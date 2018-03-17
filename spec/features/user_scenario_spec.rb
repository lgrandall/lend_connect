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
			@user_scenario = UserScenario.create(start_date: Date.today, number_days: 30, initial_lended_amount: 300)
			visit edit_user_scenario_path(@user_scenario.id)
			fill_in 'user_scenario[number_days]', with: 60

			click_on 'Submit'
			expect(page).to have_content(60)
		end
	end
end