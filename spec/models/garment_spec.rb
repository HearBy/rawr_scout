require 'spec_helper'

describe Garment do

	before do 
		@garment = create(:garment)
	end

	subject { @garment }

	it { should respond_to(:name) }
	it { should respond_to(:brand) }
	it { should respond_to(:fabric_origin) }
	it { should respond_to(:made_in) }
	it { should respond_to(:price) }
	it { should respond_to(:denim_weight) }
	it { should respond_to(:color) }
	it { should respond_to(:fit) }
	it { should respond_to(:sanforized) }
	it { should respond_to(:stretch) }
	it { should respond_to(:selvedge) }
	it { should respond_to(:url) }
	it { should respond_to(:photo_url) }

	it { should have_many(:items) }

	it { should validate_presence_of(:name) }
	it { should validate_presence_of(:brand) }
	it { should validate_presence_of(:fabric_origin) }
	it { should validate_presence_of(:made_in) }
	it { should validate_presence_of(:price) }
	it { should validate_presence_of(:denim_weight) }
	it { should validate_presence_of(:color) }
	it { should validate_presence_of(:fit) }
	it { should validate_presence_of(:url) }
	it { should validate_presence_of(:photo_url) }

	it { should validate_numericality_of(:price).is_greater_than_or_equal_to(20).is_less_than_or_equal_to(1000) }
	it { should validate_numericality_of(:denim_weight).is_greater_than_or_equal_to(4).is_less_than_or_equal_to(32) }

	describe "when fit is not one of 4 options" do
		before { @garment.fit = "test" }
		
		it { should_not be_valid }

		describe "slim straight" do
			describe "valid" do
			    before { @garment.fit = "slim straight" }
			    it { should be_valid }
			end

			describe "not valid" do
			    before { @garment.fit = "Slim straight" }
			    it { should_not be_valid }
			end
		end

		describe "straight" do
			describe "valid" do
			    before { @garment.fit = "straight" }
			    it { should be_valid }
			end

			describe "not valid" do
			    before { @garment.fit = "Straight" }
			    it { should_not be_valid }
			end
		end

		describe "tapered" do
			describe "valid" do
			    before { @garment.fit = "tapered" }
			    it { should be_valid }
			end

			describe "not valid" do
			    before { @garment.fit = "Tapered" }
			    it { should_not be_valid }
			end
		end

		describe "slim tapered" do
			describe "valid" do
			    before { @garment.fit = "slim tapered" }
			    it { should be_valid }
			end

			describe "not valid" do
			    before { @garment.fit = "Slim tapered" }
			    it { should_not be_valid }
			end
		end
	end
end