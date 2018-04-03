require 'rails_helper'

RSpec.describe "AddInvestments", type: :request do
  describe "GET /add_investments" do
    it "works! (now write some real specs)" do
      get add_investments_path
      expect(response).to have_http_status(200)
    end
  end
end
