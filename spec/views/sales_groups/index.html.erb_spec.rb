require 'spec_helper'

describe "sales_groups/index" do
  before(:each) do
    assign(:sales_groups, [
      stub_model(SalesGroup,
        :desc => "Desc"
      ),
      stub_model(SalesGroup,
        :desc => "Desc"
      )
    ])
  end

  it "renders a list of sales_groups" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Desc".to_s, :count => 2
  end
end
