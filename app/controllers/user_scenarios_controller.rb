class UserScenariosController < ApplicationController

	before_action :set_user_scenario, only: [:show, :edit, :update, :destroy]
	before_action :set_table_vars, only: [:show, :edit]

	def index
		@user_scenarios = UserScenario.all 
	end

	def show
		@user_scenarios = UserScenario.all
	end

	def new
		@user_scenario = UserScenario.new 
		@user_scenarios = UserScenario.all
		@new_investment = NewInvestments.new
	end 

	def edit
		@user_scenarios = UserScenario.all
	end

	def create
		@user_scenario = UserScenario.new(user_scenario_params)

		respond_to do |format|
			if @user_scenario.save 
				format.html{ redirect_to edit_user_scenario_path(@user_scenario.id), notice: 'Here we go!'}
			else
				format.html {render :new}
			end
		end
	end

	def update
		respond_to do |format|
			if @user_scenario.update(user_scenario_params)
				format.html {redirect_to edit_user_scenario_path(@user_scenario.id), notice: 'You did it!'}
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

	def set_table_vars
   	@tier_1 = TierLiteral.first
    @tier_2 = TierLiteral.second
    @tier_3 = TierLiteral.third
    @tier_4 = TierLiteral.last
    @days_of_plan = 0
    @average_interest = 0.005
    @extra_interest = 0.0
    @extra_interest_rate = 0.0
    @active_investment = @user_scenario.initial_lended_amount
    @interest = @active_investment * @average_interest
	end

end
