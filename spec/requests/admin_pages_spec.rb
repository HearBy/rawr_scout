require 'spec_helper'
include Devise::TestHelpers

describe "Authentication" do

	subject { page }

	describe "Garments Index page" do
		before do
			create(:admin_user, email: "test@test.com", 
								password: "testpassword", 
								password_confirmation: "testpassword", 
								role: "admin")
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

			describe "remove size after adding item to database" do
				before do
					click_link '32'
					fill_in 'item_waist', with: 32
					fill_in 'item_front_rise', with: 10
					fill_in 'item_thigh', with: 10
					fill_in 'item_knee', with: 10
					fill_in 'item_leg_opening', with: 10
					fill_in 'item_inseam', with: 30
					click_button "Create Item"
				end

				it { should have_selector(".current", text: "Garments") }
				it { should have_link("30", :href => "/admin/items/new?populate_garment_id=#{@garment.id}&tag_size=30") }
				# it { should_not have_link("32", :href => "/admin/items/new?populate_garment_id=#{@garment.id}&tag_size=32") }
			end
		end
	end

	describe "New Item page" do
		before do
			@garment = create(:garment)
			create(:admin_user, email: "test@test.com", 
								password: "testpassword", 
								password_confirmation: "testpassword", 
								role: "admin")
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

	describe "Edit Item page" do
		before do
			@garment = create(:garment, name: "test_name")
			@item = create(:item, tag_size: 32, waist: 31, front_rise: 10.5, 
								thigh: 10.25, knee: 10.75, leg_opening: 10.9, 
								inseam: 30, garment: @garment)
			create(:admin_user, email: "test@test.com", 
								password: "testpassword", 
								password_confirmation: "testpassword", 
								role: "admin")
			visit edit_admin_item_path(@item.id)
			fill_in "Email", with: "test@test.com"
			fill_in "Password", with: "testpassword"
			click_button "Login"
		end

		it "should have @garment.name preselected" do
			expect(page).to have_select('item_garment_id', selected: 'test_name')
		end

		it "should have tag_size populated" do
			find_field('item_tag_size').value.should == '32'
		end

		it "should have waist populated" do
			find_field('item_waist').value.should == '31.000'
		end

		it "should have front_rise populated" do
			find_field('item_front_rise').value.should == '10.500'
		end

		it "should have thigh populated" do
			find_field('item_thigh').value.should == '10.250'
		end

		it "should have knee populated" do
			find_field('item_knee').value.should == '10.750'
		end

		it "should have leg_opening populated" do
			find_field('item_leg_opening').value.should == '10.900'
		end

		it "should have inseam populated" do
			find_field('item_inseam').value.should == '30.0'
		end

		it { should have_selector('legend', text: 'Url for other measurements') }
		it { should have_selector('.item_form_info', text: "BRAND: #{@garment.brand}") }
		it { should have_selector('.item_form_info', text: "MODEL: #{@garment.name}") }
		it { should have_selector('.item_form_info', text: "FABRIC ORIGIN: #{@garment.fabric_origin}") }
	end
end