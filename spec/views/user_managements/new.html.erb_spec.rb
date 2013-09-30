require 'spec_helper'

describe "user_managements/new" do
  before(:each) do
    assign(:user_management, stub_model(UserManagement).as_new_record)
  end

  it "renders new user_management form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", user_managements_path, "post" do
    end
  end
end
