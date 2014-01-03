require 'spec_helper'

describe "Static pages" do

	subject { page }

	describe "Home Page" do
		describe "with false approval" do
			before do
				@item1 = create(:item, tag_size: 31, approval: false)
				@item2 = create(:item, tag_size: 32, approval: false)
				visit root_path
			end

			it { should have_selector('title', text: 'Rawr Denim Scout') }
			it { should_not have_selector('div', text: '(Size 31)') }
			it { should_not have_selector('div', text: '(Size 32)') }
		end

		describe "with true approval" do
			before do
				@item1 = create(:item, tag_size: 31, approval: true)
				@item2 = create(:item, tag_size: 32, approval: true)
				visit root_path
			end

			it { should have_selector('title', text: 'Rawr Denim Scout') }
			it { should have_selector('div', text: '(Size 31)') }
			it { should have_selector('div', text: '(Size 32)') }
		end
	end
end