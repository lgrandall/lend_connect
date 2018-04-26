module UserScenariosHelper
	def extra_interest_calc(active_investment, additional_weekday_capital)
		# Tier 1 

		extra_interest = @extra_interest
		extra_interest_rate = @extra_interest_rate
		active_investment = @active_investment
		tier_2 = @tier_2
		tier_3 = @tier_3
		tier_4 = @tier_4
		interest = @interest
		average_interest = @average_interest

		# Tier 2 
		if active_investment.between?(tier_2.tier_min, tier_2.tier_max)
			extra_interest = active_investment * tier_2.tier_pct 
			extra_interest_rate = tier_2.tier_pct
		# Tier 3
		elsif active_investment.between?(tier_3.tier_min, tier_3.tier_max)
			extra_interest = active_investment * tier_3.tier_pct 
			extra_interest_rate = tier_3.tier_pct 
		# Tier 4
		elsif active_investment >= tier_4.tier_min 
			extra_interest = active_investment * tier_4.tier_pct 
			extra_interest_rate = tier_4.tier_pct 
		end

		extra_interest = extra_interest.round(2)

		

		if interest > 0    
	    active_investment = active_investment + interest
  	end 

  	interest = active_investment * average_interest
	  active_investment = active_investment + extra_interest 

		@extra_interest = extra_interest
		@extra_interest_rate = extra_interest_rate
		@active_investment = active_investment
		@interest = interest.round(2)
  end

  def additional_investments(date, active_investment, extra_interest)
  	additional_weekday_capital = @additional_weekday_capital
  	additional_weekday_capital = 0
  	additional_capital = 0

  	case date.mday
  	when 0
	  	if @user_scenario.add_investment.newinvest_month_day_1 == true
	  		additional_capital = @user_scenario.add_investment.newinvest_month_day_1_amt
	  	end
  	end
 
  	case date.wday 
    when 0  #Sunday
      if @user_scenario.add_investment.newinvest_sun == true
        additional_weekday_capital = @user_scenario.add_investment .newinvest_amt_sun
      end
    when 1  #Monday
      if @user_scenario.add_investment.newinvest_mon == true
        additional_weekday_capital = @user_scenario.add_investment.newinvest_amt_mon
      end
    when 2  #Tuesday
      if @user_scenario.add_investment.newinvest_tue == true
        additional_weekday_capital = @user_scenario.add_investment.newinvest_amt_tue
      end
    when 3  #Wednesday
      if @user_scenario.add_investment.newinvest_wed == true
        additional_weekday_capital = @user_scenario.add_investment.newinvest_amt_wed
      end
    when 4  #Thursday
      if @user_scenario.add_investment.newinvest_thu == true
        additional_weekday_capital = @user_scenario.add_investment.newinvest_amt_thu
      end
    when 5  #Friday
      if @user_scenario.add_investment.newinvest_fri == true
        additional_weekday_capital = @user_scenario.add_investment.newinvest_amt_fri
      end
    when 6  #Saturday
      if @user_scenario.add_investment.newinvest_sat == true
        additional_weekday_capital = @user_scenario.add_investment.newinvest_amt_sat
      end
	  else
	    puts 'This just will not happen'
	  end
    active_investment = active_investment + additional_weekday_capital
    @active_investment = active_investment
	  @additional_weekday_capital = additional_weekday_capital
  end
end

def month(date, active_investment, extra_interest)
  additional_monthly_capital = @additional_weekday_capital
  additional_monthly_capital = 0

    case date.mday
    when 1
      if @user_scenario.add_investment_month.newinvest_month_day_1 == true
        additional_monthly_capital = @user_scenario.add_investment_month.newinvest_month_day_1_amt
      end
    when 2
      if @user_scenario.add_investment_month.newinvest_month_day_2 == true
        additional_monthly_capital = @user_scenario.add_investment_month.newinvest_month_day_2_amt
    end
    when 3
      if @user_scenario.add_investment_month.newinvest_month_day_3 == true
        additional_monthly_capital = @user_scenario.add_investment_month.newinvest_month_day_3_amt
    end
    when 4
      if @user_scenario.add_investment_month.newinvest_month_day_4 == true
        additional_monthly_capital = @user_scenario.add_investment_month.newinvest_month_day_4_amt
    end
    when 5
      if @user_scenario.add_investment_month.newinvest_month_day_5 == true
        additional_monthly_capital = @user_scenario.add_investment_month.newinvest_month_day_5_amt
    end
    when 6
      if @user_scenario.add_investment_month.newinvest_month_day_6== true
        additional_monthly_capital = @user_scenario.add_investment_month.newinvest_month_day_6_amt
    end
    when 7
      if @user_scenario.add_investment_month.newinvest_month_day_7 == true
        additional_monthly_capital = @user_scenario.add_investment_month.newinvest_month_day_7_amt
    end
    when 8
      if @user_scenario.add_investment_month.newinvest_month_day_8 == true
        additional_monthly_capital = @user_scenario.add_investment_month.newinvest_month_day_8_amt
    end
    when 9
      if @user_scenario.add_investment_month.newinvest_month_day_9 == true
        additional_monthly_capital = @user_scenario.add_investment_month.newinvest_month_day_9_amt
    end
    when 10
      if @user_scenario.add_investment_month.newinvest_month_day_10 == true
        additional_monthly_capital = @user_scenario.add_investment_month.newinvest_month_day_10_amt
    end
    when 11
      if @user_scenario.add_investment_month.newinvest_month_day_11 == true
        additional_monthly_capital = @user_scenario.add_investment_month.newinvest_month_day_11_amt
    end
    when 12
      if @user_scenario.add_investment_month.newinvest_month_day_12 == true
        additional_monthly_capital = @user_scenario.add_investment_month.newinvest_month_day_12_amt
    end
    when 13
      if @user_scenario.add_investment_month.newinvest_month_day_13 == true
        additional_monthly_capital = @user_scenario.add_investment_month.newinvest_month_day_13_amt
    end
    when 14
      if @user_scenario.add_investment_month.newinvest_month_day_14 == true
        additional_monthly_capital = @user_scenario.add_investment_month.newinvest_month_day_14_amt
    end
    when 15
      if @user_scenario.add_investment_month.newinvest_month_day_15 == true
        additional_monthly_capital = @user_scenario.add_investment_month.newinvest_month_day_15_amt
    end
    when 16
      if @user_scenario.add_investment_month.newinvest_month_day_16 == true
        additional_monthly_capital = @user_scenario.add_investment_month.newinvest_month_day_16_amt
    end
    when 17
      if @user_scenario.add_investment_month.newinvest_month_day_17 == true
        additional_monthly_capital = @user_scenario.add_investment_month.newinvest_month_day_17_amt
    end
    when 18
      if @user_scenario.add_investment_month.newinvest_month_day_18 == true
        additional_monthly_capital = @user_scenario.add_investment_month.newinvest_month_day_18_amt
    end
    when 19
      if @user_scenario.add_investment_month.newinvest_month_day_19 == true
        additional_monthly_capital = @user_scenario.add_investment_month.newinvest_month_day_19_amt
    end
    when 20
      if @user_scenario.add_investment_month.newinvest_month_day_20 == true
        additional_monthly_capital = @user_scenario.add_investment_month.newinvest_month_day_20_amt
    end
    when 21
      if @user_scenario.add_investment_month.newinvest_month_day_21 == true
        additional_monthly_capital = @user_scenario.add_investment_month.newinvest_month_day_21_amt
    end
    when 22
      if @user_scenario.add_investment_month.newinvest_month_day_22 == true
        additional_monthly_capital = @user_scenario.add_investment_month.newinvest_month_day_22_amt
    end
    when 23
      if @user_scenario.add_investment_month.newinvest_month_day_23 == true
        additional_monthly_capital = @user_scenario.add_investment_month.newinvest_month_day_23_amt
    end
    when 24
      if @user_scenario.add_investment_month.newinvest_month_day_24 == true
        additional_monthly_capital = @user_scenario.add_investment_month.newinvest_month_day_24_amt
    end
    when 25
      if @user_scenario.add_investment_month.newinvest_month_day_25 == true
        additional_monthly_capital = @user_scenario.add_investment_month.newinvest_month_day_25_amt
    end
    when 26
      if @user_scenario.add_investment_month.newinvest_month_day_26 == true
        additional_monthly_capital = @user_scenario.add_investment_month.newinvest_month_day_26_amt
    end
    when 27
      if @user_scenario.add_investment_month.newinvest_month_day_27 == true
        additional_monthly_capital = @user_scenario.add_investment_month.newinvest_month_day_27_amt
    end
    when 28
      if @user_scenario.add_investment_month.newinvest_month_day_28 == true
        additional_monthly_capital = @user_scenario.add_investment_month.newinvest_month_day_28_amt
    end
    when 29
      if @user_scenario.add_investment_month.newinvest_month_day_29 == true
        additional_monthly_capital = @user_scenario.add_investment_month.newinvest_month_day_29_amt
    end
    when 30
      if @user_scenario.add_investment_month.newinvest_month_day_30 == true
        additional_monthly_capital = @user_scenario.add_investment_month.newinvest_month_day_30_amt
    end
      else
      puts 'This just will not happen'
    end
    active_investment = active_investment + additional_monthly_capital
    @active_investment = active_investment
    @additional_monthly_capital = additional_monthly_capital
end
