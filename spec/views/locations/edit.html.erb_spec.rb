require 'spec_helper'

describe "locations/edit" do
  before(:each) do
    @location = assign(:location, stub_model(Location,
      :sales_rep => stub_model(SalesRep),
      :name => "MyString",
      :line1 => "MyString",
      :line2 => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip => "MyString"
    ))
  end

  it "renders the edit location form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", location_path(@location), "post" do
      assert_select "select#location_sales_rep_id[name=?]", "location[sales_rep_id]"
      assert_select "input#location_name[name=?]", "location[name]"
      assert_select "input#location_line1[name=?]", "location[line1]"
      assert_select "input#location_line2[name=?]", "location[line2]"
      assert_select "input#location_city[name=?]", "location[city]"
      assert_select "input#location_state[name=?]", "location[state]"
      assert_select "input#location_zip[name=?]", "location[zip]"
    end
  end
end
