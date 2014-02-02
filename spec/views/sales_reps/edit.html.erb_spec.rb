require 'spec_helper'

describe "sales_reps/edit" do
  before(:each) do
    @sales_rep = assign(:sales_rep, stub_model(SalesRep,
      :sales_group => nil,
      :fname => "MyString",
      :lname => "MyString"
    ))
  end

  it "renders the edit sales_rep form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", sales_rep_path(@sales_rep), "post" do
      assert_select "input#sales_rep_sales_group[name=?]", "sales_rep[sales_group]"
      assert_select "input#sales_rep_fname[name=?]", "sales_rep[fname]"
      assert_select "input#sales_rep_lname[name=?]", "sales_rep[lname]"
    end
  end
end
