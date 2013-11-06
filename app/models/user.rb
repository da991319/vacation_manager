class User < ActiveRecord::Base
  authenticates_with_sorcery!

  belongs_to :department
  belongs_to :organization
end
