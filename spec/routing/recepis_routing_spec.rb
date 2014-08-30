require "spec_helper"

describe RecepisController do
  describe "routing" do

    it "routes to #index" do
      get("/recepis").should route_to("recepis#index")
    end

    it "routes to #new" do
      get("/recepis/new").should route_to("recepis#new")
    end

    it "routes to #show" do
      get("/recepis/1").should route_to("recepis#show", :id => "1")
    end

    it "routes to #edit" do
      get("/recepis/1/edit").should route_to("recepis#edit", :id => "1")
    end

    it "routes to #create" do
      post("/recepis").should route_to("recepis#create")
    end

    it "routes to #update" do
      put("/recepis/1").should route_to("recepis#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/recepis/1").should route_to("recepis#destroy", :id => "1")
    end

  end
end
