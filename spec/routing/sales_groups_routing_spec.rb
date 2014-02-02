require "spec_helper"

describe SalesGroupsController do
  describe "routing" do

    it "routes to #index" do
      get("/sales_groups").should route_to("sales_groups#index")
    end

    it "routes to #new" do
      get("/sales_groups/new").should route_to("sales_groups#new")
    end

    it "routes to #show" do
      get("/sales_groups/1").should route_to("sales_groups#show", :id => "1")
    end

    it "routes to #edit" do
      get("/sales_groups/1/edit").should route_to("sales_groups#edit", :id => "1")
    end

    it "routes to #create" do
      post("/sales_groups").should route_to("sales_groups#create")
    end

    it "routes to #update" do
      put("/sales_groups/1").should route_to("sales_groups#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/sales_groups/1").should route_to("sales_groups#destroy", :id => "1")
    end

  end
end
