require 'spec_helper'

describe SiteController do

  describe "GET index" do

    before(:each) do
      @sales_grp = FactoryGirl.create(:sales_group)
      @sales_rep = FactoryGirl.create(:sales_rep) # will make a sales_group
      @loc = FactoryGirl.create(:location) # will make a sales_rep which makes another sales_group
    end

    it "assigns all sales_groups to @groups_reps" do
      get :index
      expect(assigns(:groups_reps)).to eq([@sales_grp, @sales_rep.sales_group, @loc.sales_rep.sales_group])
    end

    it "assigns all locations to @locations_reps" do
      get :index
      expect(assigns(:locations_rep)).to eq([@loc])
    end

    it "assigns all sales_groups to @groups_reps_location" do
      get :index
      expect(assigns(:groups_reps_location)).to eq([@sales_grp, @sales_rep.sales_group, @loc.sales_rep.sales_group])
    end

  end

end
