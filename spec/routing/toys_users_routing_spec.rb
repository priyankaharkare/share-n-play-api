require "rails_helper"

RSpec.describe ToysUsersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/toys_users").to route_to("toys_users#index")
    end


    it "routes to #show" do
      expect(:get => "/toys_users/1").to route_to("toys_users#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/toys_users").to route_to("toys_users#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/toys_users/1").to route_to("toys_users#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/toys_users/1").to route_to("toys_users#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/toys_users/1").to route_to("toys_users#destroy", :id => "1")
    end

  end
end
