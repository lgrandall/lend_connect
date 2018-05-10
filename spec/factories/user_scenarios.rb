require "date"

FactoryGirl.define do
  factory :user_scenario do
    user nil
    start_date Date.today
    number_days 20
    initial_lended_amount 5000.00
    average_interest 0.02
  end
end
