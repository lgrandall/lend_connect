class UserScenariosController < ApplicationController

	def index
		@user_scenarios = UserScenario.all 
	end

	def new
		@user_scenario = UserScenario.new 
	end 

	def create
		@user_scenario = UserScenario.new(user_scenario_params)

		respond_to do |format|
			if @user_scenario.save 
				format.html{ redirect_to user_scenarios_path, notice: 'Here we go!'}
			else
				format.html {render :new}
			end
		end
	end

	private 

	def user_scenario_params
		params.require(:user_scenario).permit(:start_date, :number_days, :initial_lended_amount)
	end

end
