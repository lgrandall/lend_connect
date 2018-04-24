require 'rails_helper'

RSpec.describe "AddInvestmentMonths", type: :request do
  describe "GET /add_investment_months" do
    it "works! (now write some real specs)" do
      get add_investment_months_path
      expect(response).to have_http_status(200)
    end
  end
end
