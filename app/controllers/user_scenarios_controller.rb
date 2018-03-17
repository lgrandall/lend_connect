class UserScenariosController < ApplicationController

	before_action :set_user_scenario, only: [:show, :edit, :update, :destroy]

	def index
		@user_scenarios = UserScenario.all 
	end

	def show
	end

	def new
		@user_scenario = UserScenario.new 
	end 

	def edit
	end

	def create
		@user_scenario = UserScenario.new(user_scenario_params)

		respond_to do |format|
			if @user_scenario.save 
				format.html{ redirect_to user_scenarios_path(@user_scenario), notice: 'Here we go!'}
			else
				format.html {render :new}
			end
		end
	end

	def update
		respond_to do |format|
			if @user_scenario.update(user_scenario_params)
				format.html {redirect_to @user_scenario, notice: 'You did it!'}
			else
				format.html { render :edit, notice: 'Try again' }
			end
		end
	end

	def destroy
		@user_scenario.destroy
		respond_to do |format|
			format.html {redirect_to user_scenarios_path, notice: 'Record has been removed.'}
			format.json { head :no_content }
		end
	end

	private 

	def user_scenario_params
		params.require(:user_scenario).permit(:start_date, :number_days, :initial_lended_amount)
	end

	def set_user_scenario
		@user_scenario = UserScenario.find(params[:id])
	end

end
