class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :department
  belongs_to :organzation

  ROLES = %w[admin manager user]
  after_create :assign_default_role

  def assign_default_role
    self.role = "admin" if self.role.to_s.empty?
  end       
end
