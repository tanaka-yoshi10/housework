require "rails_helper"

RSpec.describe HouseWorksController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/house_works").to route_to("house_works#index")
    end

    it "routes to #new" do
      expect(:get => "/house_works/new").to route_to("house_works#new")
    end

    it "routes to #show" do
      expect(:get => "/house_works/1").to route_to("house_works#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/house_works/1/edit").to route_to("house_works#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/house_works").to route_to("house_works#create")
    end

    it "routes to #update" do
      expect(:put => "/house_works/1").to route_to("house_works#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/house_works/1").to route_to("house_works#destroy", :id => "1")
    end

  end
end
