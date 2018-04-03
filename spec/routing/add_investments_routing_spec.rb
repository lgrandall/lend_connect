require "rails_helper"

RSpec.describe AddInvestmentsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/add_investments").to route_to("add_investments#index")
    end

    it "routes to #new" do
      expect(:get => "/add_investments/new").to route_to("add_investments#new")
    end

    it "routes to #show" do
      expect(:get => "/add_investments/1").to route_to("add_investments#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/add_investments/1/edit").to route_to("add_investments#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/add_investments").to route_to("add_investments#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/add_investments/1").to route_to("add_investments#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/add_investments/1").to route_to("add_investments#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/add_investments/1").to route_to("add_investments#destroy", :id => "1")
    end

  end
end
