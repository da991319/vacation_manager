class User < ActiveRecord::Base
  authenticates_with_sorcery!

  belongs_to :department
  belongs_to :organization

  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email
end
