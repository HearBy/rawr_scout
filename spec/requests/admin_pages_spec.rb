require 'spec_helper'
include Devise::TestHelpers

describe "Authentication" do

	subject { page }

	describe "garments page" do
		before do
			create(:admin_user, email: "test@test.com", password: "testpassword", password_confirmation: "testpassword", role: "admin")
			visit admin_garments_path
			fill_in "Email", with: "test@test.com"
			fill_in "Password", with: "testpassword"
			click_button "Login"
		end

		describe "Tag Sizes links" do
			before do
				@garment = create(:garment)
				@item = create(:item, tag_size: 34, garment: @garment)
				visit admin_garments_path
			end

			it { should have_link("34", :href => admin_item_path(@item.id)) }
		end

		describe "Tag Size Empty links" do
			before do
				@garment = create(:garment, tag_size_empty: "30, 32", measurements_url: "http://measurements.com")
				visit admin_garments_path
			end

			it { should have_link("30", :href => "/admin/items/new?populate_garment_id=#{@garment.id}&tag_size=30") }
			it { should have_link("32", :href => "/admin/items/new?populate_garment_id=#{@garment.id}&tag_size=32") }
		
			describe "autopopulate item form with tag size and garment info" do
				before do
					click_link "32"
				end

				it "should have @garment.name preselected" do
					expect(page).to have_select('item_garment_id', selected: @garment.name)
				end

				it "should have the tag_size form field prepopulated" do
					find_field('item_tag_size').value.should == '32'
				end

				it { should have_selector('.item_form_info', text: "BRAND: #{@garment.brand}") }
				it { should have_selector('.item_form_info', text: "MODEL: #{@garment.name}") }
				it { should have_selector('.item_form_info', text: "FABRIC ORIGIN: #{@garment.fabric_origin}") }
				it { should have_link(@garment.measurements_url)}
			end
		end
	end

	describe "New Item page" do
		before do
			@garment = create(:garment)
			create(:admin_user, email: "test@test.com", password: "testpassword", password_confirmation: "testpassword", role: "admin")
			visit new_admin_item_path
			fill_in "Email", with: "test@test.com"
			fill_in "Password", with: "testpassword"
			click_button "Login"
		end

		it "should have a nil value for the tag_size form field" do
			find_field('item_tag_size').value.should == nil
		end

		it { should have_selector('legend', text: 'Url for other measurements') }
		it { should_not have_selector('.item_form_info', text: "BRAND:") }
		it { should_not have_selector('.item_form_info', text: "MODEL:") }
		it { should_not have_selector('.item_form_info', text: "FABRIC ORIGIN:") }
	end
end