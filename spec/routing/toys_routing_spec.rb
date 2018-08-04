require "rails_helper"

RSpec.describe ToysController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/toys").to route_to("toys#index")
    end


    it "routes to #show" do
      expect(:get => "/toys/1").to route_to("toys#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/toys").to route_to("toys#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/toys/1").to route_to("toys#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/toys/1").to route_to("toys#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/toys/1").to route_to("toys#destroy", :id => "1")
    end

  end
end
