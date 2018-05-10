require 'rails_helper' 

describe 'user navigation' do 
	describe 'user creation' do 
		it 'can register with a full set of user attributes' do 
			visit new_user_registration_path

			fill_in 'user[email]', with: "test@test.com"
			fill_in 'user[password]', with: "password"
			fill_in 'user[password_confirmation]', with: "password"
			fill_in 'user[first_name]', with: "Joe"
			fill_in 'user[last_name]', with: "Bob"

			click_on "Sign up"

			expect(page.status_code).to eq(200)
		end
	end
end