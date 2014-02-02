require 'spec_helper'

describe SalesRepsController do

  let(:valid_attributes) { FactoryGirl.attributes_for(:sales_rep) }

  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all sales_reps as @sales_reps" do
      sales_rep = SalesRep.create! valid_attributes
      get :index, {}, valid_session
      assigns(:sales_reps).should eq([sales_rep])
    end
  end

  describe "GET show" do
    it "assigns the requested sales_rep as @sales_rep" do
      sales_rep = SalesRep.create! valid_attributes
      get :show, {:id => sales_rep.to_param}, valid_session
      assigns(:sales_rep).should eq(sales_rep)
    end
  end

  describe "GET new" do
    it "assigns a new sales_rep as @sales_rep" do
      get :new, {}, valid_session
      assigns(:sales_rep).should be_a_new(SalesRep)
    end
  end

  describe "GET edit" do
    it "assigns the requested sales_rep as @sales_rep" do
      sales_rep = SalesRep.create! valid_attributes
      get :edit, {:id => sales_rep.to_param}, valid_session
      assigns(:sales_rep).should eq(sales_rep)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new SalesRep" do
        expect {
          post :create, {:sales_rep => valid_attributes}, valid_session
        }.to change(SalesRep, :count).by(1)
      end

      it "assigns a newly created sales_rep as @sales_rep" do
        post :create, {:sales_rep => valid_attributes}, valid_session
        assigns(:sales_rep).should be_a(SalesRep)
        assigns(:sales_rep).should be_persisted
      end

      it "redirects to the created sales_rep" do
        post :create, {:sales_rep => valid_attributes}, valid_session
        response.should redirect_to(SalesRep.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved sales_rep as @sales_rep" do
        # Trigger the behavior that occurs when invalid params are submitted
        SalesRep.any_instance.stub(:save).and_return(false)
        post :create, {:sales_rep => { "sales_group" => "invalid value" }}, valid_session
        assigns(:sales_rep).should be_a_new(SalesRep)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        SalesRep.any_instance.stub(:save).and_return(false)
        post :create, {:sales_rep => { "sales_group" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested sales_rep" do
        sales_rep = SalesRep.create! valid_attributes
        SalesRep.any_instance.should_receive(:update).with({ "sales_group_id" => "" })
        put :update, {:id => sales_rep.to_param, :sales_rep => { "sales_group_id" => "" }}, valid_session
      end

      it "assigns the requested sales_rep as @sales_rep" do
        sales_rep = SalesRep.create! valid_attributes
        put :update, {:id => sales_rep.to_param, :sales_rep => valid_attributes}, valid_session
        assigns(:sales_rep).should eq(sales_rep)
      end

      it "redirects to the sales_rep" do
        sales_rep = SalesRep.create! valid_attributes
        put :update, {:id => sales_rep.to_param, :sales_rep => valid_attributes}, valid_session
        response.should redirect_to(sales_rep)
      end
    end

    describe "with invalid params" do
      it "assigns the sales_rep as @sales_rep" do
        sales_rep = SalesRep.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        SalesRep.any_instance.stub(:save).and_return(false)
        put :update, {:id => sales_rep.to_param, :sales_rep => { "sales_group" => "invalid value" }}, valid_session
        assigns(:sales_rep).should eq(sales_rep)
      end

      it "re-renders the 'edit' template" do
        sales_rep = SalesRep.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        SalesRep.any_instance.stub(:save).and_return(false)
        put :update, {:id => sales_rep.to_param, :sales_rep => { "sales_group" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested sales_rep" do
      sales_rep = SalesRep.create! valid_attributes
      expect {
        delete :destroy, {:id => sales_rep.to_param}, valid_session
      }.to change(SalesRep, :count).by(-1)
    end

    it "redirects to the sales_reps list" do
      sales_rep = SalesRep.create! valid_attributes
      delete :destroy, {:id => sales_rep.to_param}, valid_session
      response.should redirect_to(sales_reps_url)
    end
  end

end
