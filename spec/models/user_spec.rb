require 'spec_helper'

describe User do
  it "has a valid factory" do 
  	FactoryGirl.create(:user).should be_valid 
  end

  it "is invalid without a password" do
  	FactoryGirl.build(:user, password: nil).should_not be_valid
  end

  it "is invalid when wrong password confirmation" do
  	user = FactoryGirl.build(:user, password: "secret", password_confirmation:"not_secret")
  	user.should_not be_valid
  	user.should have(1).error_on(:password_confirmation) 
  end

  it "is invalid without an email" do
  	user = FactoryGirl.build(:user, email: nil)
  	user.should_not be_valid
  	user.should have(1).error_on(:email)
  	user.errors.messages[:email].should include("can't be blank")
  end

  it "is invalid if email is not unique" do
  	user1 = FactoryGirl.create(:user)
  	user2 = FactoryGirl.build(:user, email:user1.email)
  	user2.should have(1).error_on(:email)
  	user2.errors.messages[:email].should include("has already been taken")  	
  end
  
end
