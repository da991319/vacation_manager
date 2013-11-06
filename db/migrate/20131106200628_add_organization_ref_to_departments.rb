class AddOrganizationRefToDepartments < ActiveRecord::Migration
  def change
    add_reference :departments, :organization, index: true
  end
end
