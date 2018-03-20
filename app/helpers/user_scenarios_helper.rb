module UserScenariosHelper
	def extra_interest_calc(active_investment)
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
end
