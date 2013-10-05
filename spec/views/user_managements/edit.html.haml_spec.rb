require 'spec_helper'

describe "user_managements/edit" do
  before(:each) do
    @user_management = assign(:user_management, stub_model(UserManagement))
  end

  it "renders the edit user_management form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", user_management_path(@user_management), "post" do
    end
  end
end
