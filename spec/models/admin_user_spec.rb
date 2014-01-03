require 'spec_helper'

describe AdminUser do
	before do 
		@admin_user = create(:admin_user)
	end

	subject { @admin_user }

	it { should respond_to(:email) }
	it { should respond_to(:role) }

	it { should have_many(:items) }

	describe "admin must be one of two options" do
		before { @admin_user.role = "test" }
		
		it { should_not be_valid }

		describe "admin" do
			describe "valid" do
			    before { @admin_user.role = "admin" }
			    it { should be_valid }
			end

			describe "not valid" do
			    before { @admin_user.role = "Admin" }
			    it { should_not be_valid }
			end
		end

		describe "item_only" do
			describe "valid" do
			    before { @admin_user.role = "item_only" }
			    it { should be_valid }
			end

			describe "not valid" do
			    before { @admin_user.role = "Item_only" }
			    it { should_not be_valid }
			end
		end
	end
end
