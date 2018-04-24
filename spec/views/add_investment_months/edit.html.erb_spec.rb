require 'rails_helper'

RSpec.describe "add_investment_months/edit", type: :view do
  before(:each) do
    @add_investment_month = assign(:add_investment_month, AddInvestmentMonth.create!(
      :user => nil,
      :user_scenario => nil,
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

  it "renders the edit add_investment_month form" do
    render

    assert_select "form[action=?][method=?]", add_investment_month_path(@add_investment_month), "post" do

      assert_select "input#add_investment_month_user_id[name=?]", "add_investment_month[user_id]"

      assert_select "input#add_investment_month_user_scenario_id[name=?]", "add_investment_month[user_scenario_id]"

      assert_select "input#add_investment_month_newinvest_month_day_1[name=?]", "add_investment_month[newinvest_month_day_1]"

      assert_select "input#add_investment_month_newinvest_month_day_1_amt[name=?]", "add_investment_month[newinvest_month_day_1_amt]"

      assert_select "input#add_investment_month_newinvest_month_day_2[name=?]", "add_investment_month[newinvest_month_day_2]"

      assert_select "input#add_investment_month_newinvest_month_day_2_amt[name=?]", "add_investment_month[newinvest_month_day_2_amt]"

      assert_select "input#add_investment_month_newinvest_month_day_3[name=?]", "add_investment_month[newinvest_month_day_3]"

      assert_select "input#add_investment_month_newinvest_month_day_3_amt[name=?]", "add_investment_month[newinvest_month_day_3_amt]"

      assert_select "input#add_investment_month_newinvest_month_day_4[name=?]", "add_investment_month[newinvest_month_day_4]"

      assert_select "input#add_investment_month_newinvest_month_day_4_amt[name=?]", "add_investment_month[newinvest_month_day_4_amt]"

      assert_select "input#add_investment_month_newinvest_month_day_5[name=?]", "add_investment_month[newinvest_month_day_5]"

      assert_select "input#add_investment_month_newinvest_month_day_5_amt[name=?]", "add_investment_month[newinvest_month_day_5_amt]"

      assert_select "input#add_investment_month_newinvest_month_day_6[name=?]", "add_investment_month[newinvest_month_day_6]"

      assert_select "input#add_investment_month_newinvest_month_day_6_amt[name=?]", "add_investment_month[newinvest_month_day_6_amt]"

      assert_select "input#add_investment_month_newinvest_month_day_7[name=?]", "add_investment_month[newinvest_month_day_7]"

      assert_select "input#add_investment_month_newinvest_month_day_7_amt[name=?]", "add_investment_month[newinvest_month_day_7_amt]"

      assert_select "input#add_investment_month_newinvest_month_day_8[name=?]", "add_investment_month[newinvest_month_day_8]"

      assert_select "input#add_investment_month_newinvest_month_day_8_amt[name=?]", "add_investment_month[newinvest_month_day_8_amt]"

      assert_select "input#add_investment_month_newinvest_month_day_9[name=?]", "add_investment_month[newinvest_month_day_9]"

      assert_select "input#add_investment_month_newinvest_month_day_9_amt[name=?]", "add_investment_month[newinvest_month_day_9_amt]"

      assert_select "input#add_investment_month_newinvest_month_day_10[name=?]", "add_investment_month[newinvest_month_day_10]"

      assert_select "input#add_investment_month_newinvest_month_day_10_amt[name=?]", "add_investment_month[newinvest_month_day_10_amt]"

      assert_select "input#add_investment_month_newinvest_month_day_11[name=?]", "add_investment_month[newinvest_month_day_11]"

      assert_select "input#add_investment_month_newinvest_month_day_11_amt[name=?]", "add_investment_month[newinvest_month_day_11_amt]"

      assert_select "input#add_investment_month_newinvest_month_day_12[name=?]", "add_investment_month[newinvest_month_day_12]"

      assert_select "input#add_investment_month_newinvest_month_day_12_amt[name=?]", "add_investment_month[newinvest_month_day_12_amt]"

      assert_select "input#add_investment_month_newinvest_month_day_13[name=?]", "add_investment_month[newinvest_month_day_13]"

      assert_select "input#add_investment_month_newinvest_month_day_13_amt[name=?]", "add_investment_month[newinvest_month_day_13_amt]"

      assert_select "input#add_investment_month_newinvest_month_day_14[name=?]", "add_investment_month[newinvest_month_day_14]"

      assert_select "input#add_investment_month_newinvest_month_day_14_amt[name=?]", "add_investment_month[newinvest_month_day_14_amt]"

      assert_select "input#add_investment_month_newinvest_month_day_15[name=?]", "add_investment_month[newinvest_month_day_15]"

      assert_select "input#add_investment_month_newinvest_month_day_15_amt[name=?]", "add_investment_month[newinvest_month_day_15_amt]"

      assert_select "input#add_investment_month_newinvest_month_day_16[name=?]", "add_investment_month[newinvest_month_day_16]"

      assert_select "input#add_investment_month_newinvest_month_day_16_amt[name=?]", "add_investment_month[newinvest_month_day_16_amt]"

      assert_select "input#add_investment_month_newinvest_month_day_17[name=?]", "add_investment_month[newinvest_month_day_17]"

      assert_select "input#add_investment_month_newinvest_month_day_17_amt[name=?]", "add_investment_month[newinvest_month_day_17_amt]"

      assert_select "input#add_investment_month_newinvest_month_day_18[name=?]", "add_investment_month[newinvest_month_day_18]"

      assert_select "input#add_investment_month_newinvest_month_day_18_amt[name=?]", "add_investment_month[newinvest_month_day_18_amt]"

      assert_select "input#add_investment_month_newinvest_month_day_19[name=?]", "add_investment_month[newinvest_month_day_19]"

      assert_select "input#add_investment_month_newinvest_month_day_19_amt[name=?]", "add_investment_month[newinvest_month_day_19_amt]"

      assert_select "input#add_investment_month_newinvest_month_day_20[name=?]", "add_investment_month[newinvest_month_day_20]"

      assert_select "input#add_investment_month_newinvest_month_day_20_amt[name=?]", "add_investment_month[newinvest_month_day_20_amt]"

      assert_select "input#add_investment_month_newinvest_month_day_21[name=?]", "add_investment_month[newinvest_month_day_21]"

      assert_select "input#add_investment_month_newinvest_month_day_21_amt[name=?]", "add_investment_month[newinvest_month_day_21_amt]"

      assert_select "input#add_investment_month_newinvest_month_day_22[name=?]", "add_investment_month[newinvest_month_day_22]"

      assert_select "input#add_investment_month_newinvest_month_day_22_amt[name=?]", "add_investment_month[newinvest_month_day_22_amt]"

      assert_select "input#add_investment_month_newinvest_month_day_23[name=?]", "add_investment_month[newinvest_month_day_23]"

      assert_select "input#add_investment_month_newinvest_month_day_23_amt[name=?]", "add_investment_month[newinvest_month_day_23_amt]"

      assert_select "input#add_investment_month_newinvest_month_day_24[name=?]", "add_investment_month[newinvest_month_day_24]"

      assert_select "input#add_investment_month_newinvest_month_day_24_amt[name=?]", "add_investment_month[newinvest_month_day_24_amt]"

      assert_select "input#add_investment_month_newinvest_month_day_25[name=?]", "add_investment_month[newinvest_month_day_25]"

      assert_select "input#add_investment_month_newinvest_month_day_25_amt[name=?]", "add_investment_month[newinvest_month_day_25_amt]"

      assert_select "input#add_investment_month_newinvest_month_day_26[name=?]", "add_investment_month[newinvest_month_day_26]"

      assert_select "input#add_investment_month_newinvest_month_day_26_amt[name=?]", "add_investment_month[newinvest_month_day_26_amt]"

      assert_select "input#add_investment_month_newinvest_month_day_27[name=?]", "add_investment_month[newinvest_month_day_27]"

      assert_select "input#add_investment_month_newinvest_month_day_27_amt[name=?]", "add_investment_month[newinvest_month_day_27_amt]"

      assert_select "input#add_investment_month_newinvest_month_day_28[name=?]", "add_investment_month[newinvest_month_day_28]"

      assert_select "input#add_investment_month_newinvest_month_day_28_amt[name=?]", "add_investment_month[newinvest_month_day_28_amt]"

      assert_select "input#add_investment_month_newinvest_month_day_29[name=?]", "add_investment_month[newinvest_month_day_29]"

      assert_select "input#add_investment_month_newinvest_month_day_29_amt[name=?]", "add_investment_month[newinvest_month_day_29_amt]"

      assert_select "input#add_investment_month_newinvest_month_day_30[name=?]", "add_investment_month[newinvest_month_day_30]"

      assert_select "input#add_investment_month_newinvest_month_day_30_amt[name=?]", "add_investment_month[newinvest_month_day_30_amt]"
    end
  end
end
