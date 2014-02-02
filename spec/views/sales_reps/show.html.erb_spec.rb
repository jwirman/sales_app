require 'spec_helper'

describe "sales_reps/show" do
  before(:each) do
    @sales_rep = assign(:sales_rep, stub_model(SalesRep,
      :sales_group => nil,
      :fname => "Fname",
      :lname => "Lname"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(/Fname/)
    rendered.should match(/Lname/)
  end
end
