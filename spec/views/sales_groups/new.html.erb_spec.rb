require 'spec_helper'

describe "sales_groups/new" do
  before(:each) do
    assign(:sales_group, stub_model(SalesGroup,
      :desc => "MyString"
    ).as_new_record)
  end

  it "renders new sales_group form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", sales_groups_path, "post" do
      assert_select "input#sales_group_desc[name=?]", "sales_group[desc]"
    end
  end
end
