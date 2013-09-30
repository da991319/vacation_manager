require "spec_helper"

describe UserManagementsController do
  describe "routing" do

    it "routes to #index" do
      get("/user_managements").should route_to("user_managements#index")
    end

    it "routes to #new" do
      get("/user_managements/new").should route_to("user_managements#new")
    end

    it "routes to #show" do
      get("/user_managements/1").should route_to("user_managements#show", :id => "1")
    end

    it "routes to #edit" do
      get("/user_managements/1/edit").should route_to("user_managements#edit", :id => "1")
    end

    it "routes to #create" do
      post("/user_managements").should route_to("user_managements#create")
    end

    it "routes to #update" do
      put("/user_managements/1").should route_to("user_managements#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/user_managements/1").should route_to("user_managements#destroy", :id => "1")
    end

  end
end
