require 'spec_helper'
include Devise::TestHelpers

describe "Authentication" do
	
	subject { page }
	
	describe "admin login page" do
		before { visit admin_root_path }

		it { should have_selector('h2', text: 'Rawr Denim Scout Login') }

		describe "incorrect login" do
			before { click_button "Login" }

			it { should have_content("Invalid email or password.") }
		end

		describe "correct login for admin role" do
			before do
				create(:admin_user, email: "admin@test.com", password: "testpassword", password_confirmation: "testpassword", role: "admin")
				visit admin_root_path
				fill_in "Email", with: "admin@test.com"
				fill_in "Password", with: "testpassword"
				click_button "Login"	
			end

			it { should have_selector('li', text: 'Dashboard') }
			it { should have_selector('li', text: 'Garments') }
			it { should have_selector('li', text: 'Items') }
			it { should have_selector('li', text: 'Admin Users') }
			it { should have_selector('li', text: 'Comments') }
			it { should have_selector('.flash', text: 'Signed in successfully') }
		end

		describe "correct login for item_only role" do
			before do
				create(:admin_user, email: "itemonly@test.com", password: "testpassword", password_confirmation: "testpassword", role: "item_only")
				visit admin_root_path
				fill_in "Email", with: "itemonly@test.com"
				fill_in "Password", with: "testpassword"
				click_button "Login"	
			end

			it { should have_selector('li', text: 'Dashboard') }
			it { should have_selector('li', text: 'Garments') }
			it { should have_selector('li', text: 'Items') }
			it { should_not have_selector('li', text: 'Admin Users') }
			it { should_not have_selector('li', text: 'Comments') }
			it { should have_selector('.flash', text: 'Signed in successfully') }
		end
	end
end