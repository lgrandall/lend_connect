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
end