require "spec_helper"

describe ChoreFinishesController do
  describe "routing" do

    it "routes to #index" do
      get("/chore_finishes").should route_to("chore_finishes#index")
    end

    it "routes to #new" do
      get("/chore_finishes/new").should route_to("chore_finishes#new")
    end

    it "routes to #show" do
      get("/chore_finishes/1").should route_to("chore_finishes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/chore_finishes/1/edit").should route_to("chore_finishes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/chore_finishes").should route_to("chore_finishes#create")
    end

    it "routes to #update" do
      put("/chore_finishes/1").should route_to("chore_finishes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/chore_finishes/1").should route_to("chore_finishes#destroy", :id => "1")
    end

  end
end
