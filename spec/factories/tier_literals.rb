FactoryGirl.define do
  factory :tier_1, class: "TierLiteral" do
    tier_pct 0.0
    tier_days 120
    tier_min 100.00
    tier_max 999.99
  end

  factory :tier_2, class: "TierLiteral" do
    tier_pct 0.001
    tier_days 100
    tier_min 1000.00
    tier_max 14999.99
  end

  factory :tier_3, class: "TierLiteral" do
    tier_pct 0.002
    tier_days 80
    tier_min 15000.00
    tier_max 49999.99
  end

  factory :tier_4, class: "TierLiteral" do
    tier_pct 0.003
    tier_days 60
    tier_min 50000.00
    tier_max 100000.00
  end
end
