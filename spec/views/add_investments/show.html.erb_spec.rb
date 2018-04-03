require 'rails_helper'

RSpec.describe "add_investments/show", type: :view do
  before(:each) do
    @add_investment = assign(:add_investment, AddInvestment.create!(
      :user => nil,
      :user_scenario => nil,
      :newinvest_sun => false,
      :newinvest_amt_sun => "9.99",
      :newinvest_mon => false,
      :newinvest_amt_mon => "9.99",
      :newinvest_tue => false,
      :newinvest_amt_tue => "9.99",
      :newinvest_wed => false,
      :newinvest_amt_wed => "9.99",
      :newinvest_thu => false,
      :newinvest_amt_thu => "9.99",
      :newinvest_fri => false,
      :newinvest_amt_fri => "9.99",
      :newinvest_sat => false,
      :newinvest_amt_sat => "9.99",
      :newinvest_month_day_1 => false,
      :newinvest_month_day_1_amt => "9.99",
      :newinvest_month_day_2 => false,
      :newinvest_month_day_2_amt => "9.99",
      :newinvest_month_day_3 => false,
      :newinvest_month_day_3_amt => "9.99",
      :newinvest_month_day_4 => false,
      :newinvest_month_day_4_amt => "9.99",
      :newinvest_month_day_5 => false,
      :newinvest_month_day_5_amt => "9.99",
      :newinvest_month_day_6 => false,
      :newinvest_month_day_6_amt => "9.99",
      :newinvest_month_day_7 => false,
      :newinvest_month_day_7_amt => "9.99",
      :newinvest_month_day_8 => false,
      :newinvest_month_day_8_amt => "9.99",
      :newinvest_month_day_9 => false,
      :newinvest_month_day_9_amt => "9.99",
      :newinvest_month_day_10 => false,
      :newinvest_month_day_10_amt => "9.99",
      :newinvest_month_day_11 => false,
      :newinvest_month_day_11_amt => "9.99",
      :newinvest_month_day_12 => false,
      :newinvest_month_day_12_amt => "9.99",
      :newinvest_month_day_13 => false,
      :newinvest_month_day_13_amt => "9.99",
      :newinvest_month_day_14 => false,
      :newinvest_month_day_14_amt => "9.99",
      :newinvest_month_day_15 => false,
      :newinvest_month_day_15_amt => "9.99",
      :newinvest_month_day_16 => false,
      :newinvest_month_day_16_amt => "9.99",
      :newinvest_month_day_17 => false,
      :newinvest_month_day_17_amt => "9.99",
      :newinvest_month_day_18 => false,
      :newinvest_month_day_18_amt => "9.99",
      :newinvest_month_day_19 => false,
      :newinvest_month_day_19_amt => "9.99",
      :newinvest_month_day_20 => false,
      :newinvest_month_day_20_amt => "9.99",
      :newinvest_month_day_21 => false,
      :newinvest_month_day_21_amt => "9.99",
      :newinvest_month_day_22 => false,
      :newinvest_month_day_22_amt => "9.99",
      :newinvest_month_day_23 => false,
      :newinvest_month_day_23_amt => "9.99",
      :newinvest_month_day_24 => false,
      :newinvest_month_day_24_amt => "9.99",
      :newinvest_month_day_25 => false,
      :newinvest_month_day_25_amt => "9.99",
      :newinvest_month_day_26 => false,
      :newinvest_month_day_26_amt => "9.99",
      :newinvest_month_day_27 => false,
      :newinvest_month_day_27_amt => "9.99",
      :newinvest_month_day_28 => false,
      :newinvest_month_day_28_amt => "9.99",
      :newinvest_month_day_29 => false,
      :newinvest_month_day_29_amt => "9.99",
      :newinvest_month_day_30 => false,
      :newinvest_month_day_30_amt => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/9.99/)
  end
end
