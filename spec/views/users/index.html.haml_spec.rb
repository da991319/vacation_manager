require 'spec_helper'

describe "users/index" do
  before(:each) do
    assign(:users, [
      stub_model(User,
        :index => "Index",
        :edit => "Edit",
        :show => "Show",
        :update => "Update",
        :add => "Add"
      ),
      stub_model(User,
        :index => "Index",
        :edit => "Edit",
        :show => "Show",
        :update => "Update",
        :add => "Add"
      )
    ])
  end

  it "renders a list of users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Index".to_s, :count => 2
    assert_select "tr>td", :text => "Edit".to_s, :count => 2
    assert_select "tr>td", :text => "Show".to_s, :count => 2
    assert_select "tr>td", :text => "Update".to_s, :count => 2
    assert_select "tr>td", :text => "Add".to_s, :count => 2
  end
end
