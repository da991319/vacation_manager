require 'spec_helper'

describe "user_managements/show" do
  before(:each) do
    @user_management = assign(:user_management, stub_model(UserManagement))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
