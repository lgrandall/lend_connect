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
		@add_investment = AddInvestment.new
		@user_scenario = UserScenario.new 
		@user_scenarios = UserScenario.all
	end 

	def edit
		@user_scenarios = UserScenario.all
	end

	def create
		@add_investment = AddInvestment.new(add_investment_params)
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

	    def add_investment_params
      params.require(:add_investment).permit(:user_id, :user_scenario_id, :newinvest_sun, :newinvest_amt_sun, :newinvest_mon, :newinvest_amt_mon, :newinvest_tue, :newinvest_amt_tue, :newinvest_wed, :newinvest_amt_wed, :newinvest_thu, :newinvest_amt_thu, :newinvest_fri, :newinvest_amt_fri, :newinvest_sat, :newinvest_amt_sat, :newinvest_month_day_1, :newinvest_month_day_1_amt, :newinvest_month_day_2, :newinvest_month_day_2_amt, :newinvest_month_day_3, :newinvest_month_day_3_amt, :newinvest_month_day_4, :newinvest_month_day_4_amt, :newinvest_month_day_5, :newinvest_month_day_5_amt, :newinvest_month_day_6, :newinvest_month_day_6_amt, :newinvest_month_day_7, :newinvest_month_day_7_amt, :newinvest_month_day_8, :newinvest_month_day_8_amt, :newinvest_month_day_9, :newinvest_month_day_9_amt, :newinvest_month_day_10, :newinvest_month_day_10_amt, :newinvest_month_day_11, :newinvest_month_day_11_amt, :newinvest_month_day_12, :newinvest_month_day_12_amt, :newinvest_month_day_13, :newinvest_month_day_13_amt, :newinvest_month_day_14, :newinvest_month_day_14_amt, :newinvest_month_day_15, :newinvest_month_day_15_amt, :newinvest_month_day_16, :newinvest_month_day_16_amt, :newinvest_month_day_17, :newinvest_month_day_17_amt, :newinvest_month_day_18, :newinvest_month_day_18_amt, :newinvest_month_day_19, :newinvest_month_day_19_amt, :newinvest_month_day_20, :newinvest_month_day_20_amt, :newinvest_month_day_21, :newinvest_month_day_21_amt, :newinvest_month_day_22, :newinvest_month_day_22_amt, :newinvest_month_day_23, :newinvest_month_day_23_amt, :newinvest_month_day_24, :newinvest_month_day_24_amt, :newinvest_month_day_25, :newinvest_month_day_25_amt, :newinvest_month_day_26, :newinvest_month_day_26_amt, :newinvest_month_day_27, :newinvest_month_day_27_amt, :newinvest_month_day_28, :newinvest_month_day_28_amt, :newinvest_month_day_29, :newinvest_month_day_29_amt, :newinvest_month_day_30, :newinvest_month_day_30_amt)
    end

end
