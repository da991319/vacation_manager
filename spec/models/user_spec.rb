require 'spec_helper'

describe User do
  it "should create set to admin by defaultp" do
  	testUser = User.create! :email => "email@email.com", :password => "password"

  	expect(testUser.role).to eq("admin")
  end
end
