require 'spec_helper'

describe "users/edit" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :index => "MyString",
      :edit => "MyString",
      :show => "MyString",
      :update => "MyString",
      :add => "MyString"
    ))
  end

  it "renders the edit user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", user_path(@user), "post" do
      assert_select "input#user_index[name=?]", "user[index]"
      assert_select "input#user_edit[name=?]", "user[edit]"
      assert_select "input#user_show[name=?]", "user[show]"
      assert_select "input#user_update[name=?]", "user[update]"
      assert_select "input#user_add[name=?]", "user[add]"
    end
  end
end
