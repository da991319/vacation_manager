require 'spec_helper'

describe "users/show" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :index => "Index",
      :edit => "Edit",
      :show => "Show",
      :update => "Update",
      :add => "Add"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Index/)
    rendered.should match(/Edit/)
    rendered.should match(/Show/)
    rendered.should match(/Update/)
    rendered.should match(/Add/)
  end
end
