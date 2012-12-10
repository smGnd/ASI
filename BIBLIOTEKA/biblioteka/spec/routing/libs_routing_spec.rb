require "spec_helper"

describe LibsController do
  describe "routing" do

    it "routes to #index" do
      get("/libs").should route_to("libs#index")
    end

    it "routes to #new" do
      get("/libs/new").should route_to("libs#new")
    end

    it "routes to #show" do
      get("/libs/1").should route_to("libs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/libs/1/edit").should route_to("libs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/libs").should route_to("libs#create")
    end

    it "routes to #update" do
      put("/libs/1").should route_to("libs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/libs/1").should route_to("libs#destroy", :id => "1")
    end

  end
end
