require "rails_helper"

RSpec.describe AddInvestmentMonthsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/add_investment_months").to route_to("add_investment_months#index")
    end

    it "routes to #new" do
      expect(:get => "/add_investment_months/new").to route_to("add_investment_months#new")
    end

    it "routes to #show" do
      expect(:get => "/add_investment_months/1").to route_to("add_investment_months#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/add_investment_months/1/edit").to route_to("add_investment_months#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/add_investment_months").to route_to("add_investment_months#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/add_investment_months/1").to route_to("add_investment_months#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/add_investment_months/1").to route_to("add_investment_months#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/add_investment_months/1").to route_to("add_investment_months#destroy", :id => "1")
    end

  end
end
