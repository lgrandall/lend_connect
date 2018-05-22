class AddInvestmentsController < ApplicationController
  before_filter :find_parent, only: %i[create edit]
  before_action :set_add_investment, only: %i[show edit update destroy]

  # GET /add_investments
  # GET /add_investments.json
  def index
    @add_investments = AddInvestment.all
  end

  # GET /add_investments/1
  # GET /add_investments/1.json
  def show
  end

  # GET /add_investments/new
  def new
    @add_investment = AddInvestment.new
  end

  # GET /add_investments/1/edit
  def edit
    @add_investment.user_scenario = @user_scenario
    @add_investment.id = @user_scenario.add_investment.id
  end

  # POST /add_investments
  # POST /add_investments.json
  def create
    @add_investment = current_user.add_investments.build(add_investment_params)
    @add_investment.user_scenario = @user_scenario

    respond_to do |format|
      if @add_investment.save
        format.html { redirect_to @user_scenario, notice: 'Add investment was successfully created.' }
        format.json { render :show, status: :created, location: @add_investment }
        format.js {render js: 'window.top.location.reload(true);'}
      else
        format.html { render :new }
        format.json { render json: @add_investment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /add_investments/1
  # PATCH/PUT /add_investments/1.json
  def update
    respond_to do |format|
      if @add_investment.update(add_investment_params)
        format.html {redirect_to edit_user_scenario_path(@user_scenario.id), notice: 'You did it!'}
        format.json { render :show, status: :ok, location: @add_investment }
        format.js {render js: 'window.top.location.reload(true);'}
      else
        format.html { render :edit }
        format.json { render json: @add_investment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /add_investments/1
  # DELETE /add_investments/1.json
  def destroy
    @add_investment.destroy
    respond_to do |format|
      format.html { redirect_to add_investments_url, notice: 'Add investment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def find_parent
    @user_scenario = UserScenario.find params[:user_scenario_id]
  end


    # Use callbacks to share common setup or constraints between actions.
    def set_add_investment
      @add_investment = AddInvestment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def add_investment_params
      params.require(:add_investment).permit(:user_id, :user_scenario_id, :newinvest_sun, :newinvest_amt_sun, :newinvest_mon, :newinvest_amt_mon, :newinvest_tue, :newinvest_amt_tue, :newinvest_wed, :newinvest_amt_wed, :newinvest_thu, :newinvest_amt_thu, :newinvest_fri, :newinvest_amt_fri, :newinvest_sat, :newinvest_amt_sat, :newinvest_month_day_1, :newinvest_month_day_1_amt, :newinvest_month_day_2, :newinvest_month_day_2_amt, :newinvest_month_day_3, :newinvest_month_day_3_amt, :newinvest_month_day_4, :newinvest_month_day_4_amt, :newinvest_month_day_5, :newinvest_month_day_5_amt, :newinvest_month_day_6, :newinvest_month_day_6_amt, :newinvest_month_day_7, :newinvest_month_day_7_amt, :newinvest_month_day_8, :newinvest_month_day_8_amt, :newinvest_month_day_9, :newinvest_month_day_9_amt, :newinvest_month_day_10, :newinvest_month_day_10_amt, :newinvest_month_day_11, :newinvest_month_day_11_amt, :newinvest_month_day_12, :newinvest_month_day_12_amt, :newinvest_month_day_13, :newinvest_month_day_13_amt, :newinvest_month_day_14, :newinvest_month_day_14_amt, :newinvest_month_day_15, :newinvest_month_day_15_amt, :newinvest_month_day_16, :newinvest_month_day_16_amt, :newinvest_month_day_17, :newinvest_month_day_17_amt, :newinvest_month_day_18, :newinvest_month_day_18_amt, :newinvest_month_day_19, :newinvest_month_day_19_amt, :newinvest_month_day_20, :newinvest_month_day_20_amt, :newinvest_month_day_21, :newinvest_month_day_21_amt, :newinvest_month_day_22, :newinvest_month_day_22_amt, :newinvest_month_day_23, :newinvest_month_day_23_amt, :newinvest_month_day_24, :newinvest_month_day_24_amt, :newinvest_month_day_25, :newinvest_month_day_25_amt, :newinvest_month_day_26, :newinvest_month_day_26_amt, :newinvest_month_day_27, :newinvest_month_day_27_amt, :newinvest_month_day_28, :newinvest_month_day_28_amt, :newinvest_month_day_29, :newinvest_month_day_29_amt, :newinvest_month_day_30, :newinvest_month_day_30_amt)
    end
end
