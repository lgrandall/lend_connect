TierLiteral.create(tier_name: "Tier 1",
									 tier_pct: 0.0, 
									 tier_days: 120, 
									 tier_min: 100.00, 
									 tier_max: 999.99)

TierLiteral.create(tier_name: "Tier 2", 
										tier_pct: 0.001, 
										tier_days: 100, 
										tier_min: 1000.00, 
										tier_max: 14999.99)

TierLiteral.create(tier_name: "Tier 3",
										tier_pct: 0.002, 
										tier_days: 80, 
										tier_min: 15000, 
										tier_max: 49999.99)

TierLiteral.create(tier_name: "Tier 4", 
										tier_pct: 0.003, 
										tier_days: 60, 
										tier_min: 50000.0, 
										tier_max: 100000.0)

User.create!(
	email: "test@test.com",
	password: "password",
	password_confirmation: "password",
	first_name: "John",
	last_name: "Dikema"
	)