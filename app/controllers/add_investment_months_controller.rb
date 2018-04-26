class AddInvestmentMonthsController < ApplicationController
  before_filter :find_parent, only: [:create, :edit]
  before_action :set_add_investment_month, only: [:show, :edit, :update, :destroy]

  # GET /add_investment_months
  # GET /add_investment_months.json
  def index
    @add_investment_months = AddInvestmentMonth.all
  end

  # GET /add_investment_months/1
  # GET /add_investment_months/1.json
  def show
  end

  # GET /add_investment_months/new
  def new
    @add_investment_month = AddInvestmentMonth.new
  end

  # GET /add_investment_months/1/edit
  def edit
    @add_investment_month.user_scenario = @user_scenario
    @add_investment_month.id = @user_scenario.add_investment_month.id
  end

  # POST /add_investment_months
  # POST /add_investment_months.json
  def create
    @add_investment_month = current_user.add_investment_months.build(add_investment_month_params)
    @add_investment_month.user_scenario = @user_scenario

    respond_to do |format|
      if @add_investment_month.save
        format.html { redirect_to edit_user_scenario_path(@user_scenario.id), notice: 'Add investment was successfully created.' }
        format.json { render :show, status: :created, location: @add_investment_month }
        format.js 
      else
        format.html { render :new }
        format.json { render json: @add_investment_month.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /add_investment_months/1
  # PATCH/PUT /add_investment_months/1.json
  def update
    respond_to do |format|
      if @add_investment_month.update(add_investment_month_params)
        
        format.json { render :show, status: :ok, location: @add_investment_month }
      else
        format.html { render :edit }
        format.json { render json: @add_investment_month.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /add_investment_months/1
  # DELETE /add_investment_months/1.json
  def destroy
    @add_investment_month.destroy
    respond_to do |format|
      format.html { redirect_to add_investment_months_url, notice: 'Add investment month was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def find_parent
      @user_scenario = UserScenario.find params[:user_scenario_id]
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_add_investment_month
      @add_investment_month = AddInvestmentMonth.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def add_investment_month_params
      params.require(:add_investment_month).permit(:user_id, :user_scenario_id, :newinvest_month_day_1, :newinvest_month_day_1_amt, :newinvest_month_day_2, :newinvest_month_day_2_amt, :newinvest_month_day_3, :newinvest_month_day_3_amt, :newinvest_month_day_4, :newinvest_month_day_4_amt, :newinvest_month_day_5, :newinvest_month_day_5_amt, :newinvest_month_day_6, :newinvest_month_day_6_amt, :newinvest_month_day_7, :newinvest_month_day_7_amt, :newinvest_month_day_8, :newinvest_month_day_8_amt, :newinvest_month_day_9, :newinvest_month_day_9_amt, :newinvest_month_day_10, :newinvest_month_day_10_amt, :newinvest_month_day_11, :newinvest_month_day_11_amt, :newinvest_month_day_12, :newinvest_month_day_12_amt, :newinvest_month_day_13, :newinvest_month_day_13_amt, :newinvest_month_day_14, :newinvest_month_day_14_amt, :newinvest_month_day_15, :newinvest_month_day_15_amt, :newinvest_month_day_16, :newinvest_month_day_16_amt, :newinvest_month_day_17, :newinvest_month_day_17_amt, :newinvest_month_day_18, :newinvest_month_day_18_amt, :newinvest_month_day_19, :newinvest_month_day_19_amt, :newinvest_month_day_20, :newinvest_month_day_20_amt, :newinvest_month_day_21, :newinvest_month_day_21_amt, :newinvest_month_day_22, :newinvest_month_day_22_amt, :newinvest_month_day_23, :newinvest_month_day_23_amt, :newinvest_month_day_24, :newinvest_month_day_24_amt, :newinvest_month_day_25, :newinvest_month_day_25_amt, :newinvest_month_day_26, :newinvest_month_day_26_amt, :newinvest_month_day_27, :newinvest_month_day_27_amt, :newinvest_month_day_28, :newinvest_month_day_28_amt, :newinvest_month_day_29, :newinvest_month_day_29_amt, :newinvest_month_day_30, :newinvest_month_day_30_amt)
    end
end
