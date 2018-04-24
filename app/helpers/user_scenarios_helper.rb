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
	  @additional_weekday_capital = additional_weekday_capital
  end

end
