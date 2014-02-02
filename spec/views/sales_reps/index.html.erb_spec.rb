require 'spec_helper'

describe "sales_reps/index" do
  before(:each) do
    assign(:sales_reps, [
      stub_model(SalesRep,
        :sales_group => nil,
        :fname => "Fname",
        :lname => "Lname"
      ),
      stub_model(SalesRep,
        :sales_group => nil,
        :fname => "Fname",
        :lname => "Lname"
      )
    ])
  end

  it "renders a list of sales_reps" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Fname".to_s, :count => 2
    assert_select "tr>td", :text => "Lname".to_s, :count => 2
  end
end
