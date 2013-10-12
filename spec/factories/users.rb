FactoryGirl.define do
	factory :user do
		firstname 'John'
		lastname 'Late'
		sequence(:email) {|n| "person#{n}@example.com" }
		password 'password'
		role 'admin'
	end

end
