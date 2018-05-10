FactoryGirl.define do

	sequence :email do |n|
		"test#{n}@test.com"
	end

  factory :user do
    email {generate :email}
    password 'password'
    password_confirmation 'password'
    first_name 'Joe'
    last_name 'Bob'
  end
end
