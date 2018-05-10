require 'rails_helper'
require 'date'

describe 'navigation' do
	let(:user) {FactoryGirl.create(:user)} 
	let(:tier_1) {FactoryGirl.create(:tier_1)}
	let(:tier_2) {FactoryGirl.create(:tier_2)}
	let(:tier_3) {FactoryGirl.create(:tier_3)}
	let(:tier_4) {FactoryGirl.create(:tier_4)}

	before do 
		login_as(user, :scope => :user)
	end 

	describe 'index' do
		before do 
			visit user_scenarios_path
		end 

    it 'can be reached successfully' do
      expect(page.status_code).to eq(200)
    end

    it 'has a scenario' do 
			@user_scenario = UserScenario.create(start_date: Date.today, number_days: 30, initial_lended_amount: 3000.00, user_id: user.id, id: 1)
			visit user_scenarios_path
			expect(page).to have_content(3000.00)
		end
	end

	describe 'creation' do 
		it 'can be succesfully created' do 
			visit new_user_scenario_path
			@tier_2 = TierLiteral.create(tier_name:'tier_2', tier_pct:0.001, tier_days:100, tier_min:1000.00, tier_max:14999.99)
			@tier_3 = TierLiteral.create(tier_name:'tier_3', tier_pct:0.002, tier_days:80, tier_min:15000.00, tier_max:49999.99)
			@tier_4 = TierLiteral.create(tier_name:'tier_4', tier_pct:0.003, tier_days:60, tier_min:50000.00, tier_max:100000.00) 
			fill_in 'user_scenario[start_date]', with: Date.today
			fill_in 'user_scenario[number_days]', with: 30
			fill_in 'user_scenario[initial_lended_amount]', with: 300

			click_button 'Update'

			expect(page).to have_content(Date.today)
		end
	end

	describe 'editing' do 
		it 'can be edited' do 
			@tier_2 = TierLiteral.create(tier_name:'tier_2', tier_pct:0.001, tier_days:100, tier_min:1000.00, tier_max:14999.99)
			@tier_3 = TierLiteral.create(tier_name:'tier_3', tier_pct:0.002, tier_days:80, tier_min:15000.00, tier_max:49999.99)
			@tier_4 = TierLiteral.create(tier_name:'tier_4', tier_pct:0.003, tier_days:60, tier_min:50000.00, tier_max:100000.00)
			@user_scenario = UserScenario.create(start_date: Date.today, number_days: 30, initial_lended_amount: 3000.00, user_id: user.id, id: 1)
			active_investment = @user_scenario.initial_lended_amount
			visit edit_user_scenario_path(@user_scenario.id)
			fill_in 'user_scenario[number_days]', with: 60

			click_button 'Update'
			expect(page).to have_content(60)
		end
	end

	describe 'delete' do 
		it 'can be deleted' do 
			@user_scenario = UserScenario.create(start_date: Date.today, number_days: 30, initial_lended_amount: 3000.00, user_id: user.id, id: 1)
			visit user_scenarios_path
			click_link "delete"

			expect(page.status_code).to eq(200)
		end 
	end
end