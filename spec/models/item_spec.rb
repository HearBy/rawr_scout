require 'spec_helper'

describe Item do

	before do 
		@item = create(:item)
	end

	subject { @item }

	it { should respond_to(:waist) }
	it { should respond_to(:front_rise) }
	it { should respond_to(:thigh) }
	it { should respond_to(:knee) }
	it { should respond_to(:leg_opening) }
	it { should respond_to(:inseam) }
	it { should respond_to(:tag_size) }
	it { should respond_to(:garment_id) }

	it { should validate_numericality_of(:waist).is_greater_than_or_equal_to(26).is_less_than_or_equal_to(42) }
	it { should validate_numericality_of(:front_rise).is_greater_than_or_equal_to(8).is_less_than_or_equal_to(14) }
	it { should validate_numericality_of(:thigh).is_greater_than_or_equal_to(9).is_less_than_or_equal_to(15) }
	it { should validate_numericality_of(:knee).is_greater_than_or_equal_to(6).is_less_than_or_equal_to(12) }
	it { should validate_numericality_of(:leg_opening).is_greater_than_or_equal_to(5).is_less_than_or_equal_to(12) }
	it { should validate_numericality_of(:inseam).is_greater_than_or_equal_to(28).is_less_than_or_equal_to(40) }
	it { should validate_numericality_of(:tag_size).is_greater_than_or_equal_to(25).is_less_than_or_equal_to(43) }

	describe "true_waist_search" do
		before do
			@small_jean = create(:item, waist: 32)
			@large_jean = create(:item, waist: 33)
		end

		it "should find the jean size I'm looking for" do
			Item.true_waist_search(32).should include(@small_jean)
			Item.true_waist_search(32).should_not include(@large_jean)
		end

		it "should give me all jeans with no params[:waist]" do
			Item.true_waist_search(nil).should include(@small_jean && @large_jean)
		end

		describe "with half inch jeans in either direction" do
			before do
				@half_up = create(:item, waist: 32.5)
				@half_down = create(:item, waist: 31.5) 
			end

			it "should find the jean size I'm looking for" do
				Item.true_waist_search(32).should include(@small_jean && @half_down && @half_up)
				Item.true_waist_search(32).should_not include(@large_jean)
			end
		end
	end

	describe "price_search" do
		before do
			@cheap_garment = create(:garment, price: 100)
			@expensive_garment = create(:garment, price: 200)
			@cheap_jean = create(:item, garment: @cheap_garment)
			@expensive_jean = create(:item, garment: @expensive_garment)
		end

		it "should find the jean with price I'm looking for" do
			Item.price_search(75, 125).should include(@cheap_jean)
			Item.price_search(75, 125).should_not include(@expensive_jean)
		end

		it "should give me all jeans with no params[:min_price] or params[:max_price]" do
			Item.price_search(nil, nil).should include(@cheap_jean && @expensive_jean)
		end
	end

	describe "garment_search" do
		describe "fit" do
			before do
				@tapered_garment = 		 create(:garment, fit: "tapered")
				@slim_straight_garment = create(:garment, fit: "slim straight")
				@tapered_jean = 			 create(:item, garment: @tapered_garment)
				@slim_straight_jean = 	 create(:item, garment: @slim_straight_garment)
			end

			it "should find the jean with the fit I'm looking for" do
				Item.garment_search('fit', ["tapered"]).should include(@tapered_jean)
				Item.garment_search('fit', ["tapered"]).should_not include(@slim_straight_jean)
				Item.garment_search('fit', ["slim straight"]).should include(@slim_straight_jean)
				Item.garment_search('fit', ["slim straight"]).should_not include(@tapered_jean)
			end

			it "should be able to find more than one fit type" do
				Item.garment_search('fit', ["tapered", "slim straight"]).should include(@tapered_jean && @slim_straight_jean)
			end

			it "should give me all the jeans with non-existent param" do
				Item.garment_search('fit', ["test"]).should include(@tapered_jean && @slim_straight_jean)
			end

			it "should give me all jeans with no params[:fit]" do
				Item.garment_search('fit', nil).should include(@tapered_jean && @slim_straight_jean)
			end
		end

		describe "made_in" do
			before do
				@USA_garment = 	 create(:garment, made_in: "USA")
				@Japan_garment = create(:garment, made_in: "Japan")
				@USA_jean = 	 create(:item, garment: @USA_garment)
				@Japan_jean = 	 create(:item, garment: @Japan_garment)
			end

			it "should find the jean with the made_in I'm looking for" do
				Item.garment_search('made_in', ["USA"]).should include(@USA_jean)
				Item.garment_search('made_in', ["USA"]).should_not include(@Japan_jean)
				Item.garment_search('made_in', ["Japan"]).should include(@Japan_jean)
				Item.garment_search('made_in', ["Japan"]).should_not include(@USA_jean)
			end

			it "should be able to find more than one made_in type" do
				Item.garment_search('made_in', ["USA", "Japan"]).should include(@USA_jean && @Japan_jean)
			end

			it "should give me all the jeans with non-existent param" do
				Item.garment_search('made_in', ["test"]).should include(@USA_jean && @Japan_jean)
			end

			it "should give me all jeans with no params[:made_in]" do
				Item.garment_search('made_in', nil).should include(@USA_jean && @Japan_jean)
			end
		end

		describe "fabric_origin" do
			before do
				@kuroki_mills_garment = create(:garment, fabric_origin: "Kuroki Mills")
				@Japan_garment = 		create(:garment, fabric_origin: "Japan")
				@kuroki_mills_jean = 	create(:item, garment: @kuroki_mills_garment)
				@Japan_jean = 	 		create(:item, garment: @Japan_garment)
			end

			it "should find the jean with the fabric_origin I'm looking for" do
				Item.garment_search('fabric_origin', ["Kuroki Mills"]).should include(@kuroki_mills_jean)
				Item.garment_search('fabric_origin', ["Kuroki Mills"]).should_not include(@Japan_jean)
				Item.garment_search('fabric_origin', ["Japan"]).should include(@Japan_jean)
				Item.garment_search('fabric_origin', ["Japan"]).should_not include(@kuroki_mills_jean)
			end

			it "should be able to find more than one fabric_origin type" do
				Item.garment_search('fabric_origin', ["Kuroki Mills", "Japan"]).should include(@kuroki_mills_jean && @Japan_jean)
			end

			it "should give me all the jeans with non-existent param" do
				Item.garment_search('fabric_origin', ["test"]).should include(@kuroki_mills_jean && @Japan_jean)
			end

			it "should give me all jeans with no params[:fabric_origin]" do
				Item.garment_search('fabric_origin', nil).should include(@kuroki_mills_jean && @Japan_jean)
			end
		end

		describe "color" do
			before do
				@indigo_garment = create(:garment, color: "Indigo")
				@black_garment =  create(:garment, color: "black")
				@indigo_jean = 	  create(:item, garment: @indigo_garment)
				@black_jean = 	  create(:item, garment: @black_garment)
			end

			it "should find the jean with the color I'm looking for" do
				Item.garment_search('color', ["Indigo"]).should include(@indigo_jean)
				Item.garment_search('color', ["Indigo"]).should_not include(@black_jean)
				Item.garment_search('color', ["black"]).should include(@black_jean)
				Item.garment_search('color', ["black"]).should_not include(@indigo_jean)
			end

			it "should be able to find more than one color type" do
				Item.garment_search('color', ["Indigo", "black"]).should include(@indigo_jean && @black_jean)
			end

			it "should give me all the jeans with non-existent param" do
				Item.garment_search('color', ["test"]).should include(@indigo_jean && @black_jean)
			end

			it "should give me all jeans with no params[:color]" do
				Item.garment_search('color', nil).should include(@indigo_jean && @black_jean)
			end
		end

		describe "brand" do
			before do
				@sixteen_garment = create(:garment, brand: "3sixteen")
				@unbranded_garment =  create(:garment, brand: "Unbranded")
				@sixteen_jean = 	  create(:item, garment: @sixteen_garment)
				@unbranded_jean = 	  create(:item, garment: @unbranded_garment)
			end

			it "should find the jean with the brand I'm looking for" do
				Item.garment_search('brand', ["3sixteen"]).should include(@sixteen_jean)
				Item.garment_search('brand', ["3sixteen"]).should_not include(@unbranded_jean)
				Item.garment_search('brand', ["Unbranded"]).should include(@unbranded_jean)
				Item.garment_search('brand', ["Unbranded"]).should_not include(@sixteen_jean)
			end

			it "should be able to find more than one brand type" do
				Item.garment_search('brand', ["3sixteen", "Unbranded"]).should include(@sixteen_jean && @unbranded_jean)
			end

			it "should give me all the jeans with non-existent param" do
				Item.garment_search('brand', ["test"]).should include(@sixteen_jean && @unbranded_jean)
			end

			it "should give me all jeans with no params[:brand]" do
				Item.garment_search('brand', nil).should include(@sixteen_jean && @unbranded_jean)
			end
		end
	end

	describe "boolean_search" do
		describe "sanforized" do
			before do
				@true_garment =   create(:garment, sanforized: "true")
				@false_garment =  create(:garment, sanforized: "false")
				@true_jean = 	  create(:item, garment: @true_garment)
				@false_jean = 	  create(:item, garment: @false_garment)
			end

			it "should find the sanforized jean" do
				Item.boolean_search('sanforized', "true").should include(@true_jean)
				Item.boolean_search('sanforized', "true").should_not include(@false_jean)
				Item.boolean_search('sanforized', "false").should include(@false_jean)
				Item.boolean_search('sanforized', "false").should_not include(@true_jean)
			end

			it "should give me all the jeans with non-existent param" do
				Item.boolean_search('sanforized', "test").should include(@true_jean && @false_jean)
			end

			it "should give me all jeans with no params[:sanforized]" do
				Item.boolean_search('sanforized', nil).should include(@true_jean && @false_jean)
			end
		end

		describe "selvedge" do
			before do
				@true_garment =   create(:garment, selvedge: "true")
				@false_garment =  create(:garment, selvedge: "false")
				@true_jean = 	  create(:item, garment: @true_garment)
				@false_jean = 	  create(:item, garment: @false_garment)
			end

			it "should find the selvedge jean" do
				Item.boolean_search('selvedge', "true").should include(@true_jean)
				Item.boolean_search('selvedge', "true").should_not include(@false_jean)
				Item.boolean_search('selvedge', "false").should include(@false_jean)
				Item.boolean_search('selvedge', "false").should_not include(@true_jean)
			end

			it "should give me all the jeans with non-existent param" do
				Item.boolean_search('selvedge', "test").should include(@true_jean && @false_jean)
			end

			it "should give me all jeans with no params[:selvedge]" do
				Item.boolean_search('selvedge', nil).should include(@true_jean && @false_jean)
			end
		end
	end

	describe "weight_search" do
		before do
			@light_garment = create(:garment, denim_weight: 12)
			@heavy_garment = create(:garment, denim_weight: 14.5)
			@light_jean = 	 create(:item, garment: @light_garment)
			@heavy_jean = 	 create(:item, garment: @heavy_garment)
		end

		it "should find the jean with price I'm looking for" do
			Item.weight_search(11, 13).should include(@light_jean)
			Item.weight_search(11, 13).should_not include(@heavy_jean)
		end

		it "should give me all jeans with no params[:min_denim_weight] or params[:max_denim_weight]" do
			Item.weight_search(nil, nil).should include(@light_jean && @heavy_jean)
		end
	end

	describe "front_rise_search" do
		before do
			@small_jean = create(:item, front_rise: 10)
			@large_jean = create(:item, front_rise: 11)
		end

		it "should find the jean size I'm looking for" do
			Item.front_rise_search(10).should include(@small_jean)
			Item.front_rise_search(10).should_not include(@large_jean)
		end

		it "should give me all jeans with no params[:waist]" do
			Item.front_rise_search(nil).should include(@small_jean && @large_jean)
		end

		describe "with quarter inch jeans in either direction" do
			before do
				@half_up = create(:item, front_rise: 10.25)
				@half_down = create(:item, front_rise: 11)
			end

			it "should find the jean size I'm looking for" do
				Item.front_rise_search(10).should include(@small_jean && @half_down && @half_up)
				Item.front_rise_search(10).should_not include(@large_jean)
			end
		end
	end

	describe "thigh_search" do
		before do
			@small_jean = create(:item, thigh: 10)
			@large_jean = create(:item, thigh: 11)
		end

		it "should find the jean size I'm looking for" do
			Item.thigh_search(10).should include(@small_jean)
			Item.thigh_search(10).should_not include(@large_jean)
		end

		it "should give me all jeans with no params[:waist]" do
			Item.thigh_search(nil).should include(@small_jean && @large_jean)
		end

		describe "with quarter inch jeans in either direction" do
			before do
				@half_up = create(:item, thigh: 10.25)
				@half_down = create(:item, thigh: 11)
			end

			it "should find the jean size I'm looking for" do
				Item.thigh_search(10).should include(@small_jean && @half_down && @half_up)
				Item.thigh_search(10).should_not include(@large_jean)
			end
		end
	end

	describe "knee_search" do
		before do
			@small_jean = create(:item, knee: 10)
			@large_jean = create(:item, knee: 11)
		end

		it "should find the jean size I'm looking for" do
			Item.knee_search(10).should include(@small_jean)
			Item.knee_search(10).should_not include(@large_jean)
		end

		it "should give me all jeans with no params[:waist]" do
			Item.knee_search(nil).should include(@small_jean && @large_jean)
		end

		describe "with quarter inch jeans in either direction" do
			before do
				@half_up = create(:item, knee: 10.25)
				@half_down = create(:item, knee: 11)
			end

			it "should find the jean size I'm looking for" do
				Item.knee_search(10).should include(@small_jean && @half_down && @half_up)
				Item.knee_search(10).should_not include(@large_jean)
			end
		end
	end

	describe "leg_opening_search" do
		before do
			@small_jean = create(:item, leg_opening: 10)
			@large_jean = create(:item, leg_opening: 11)
		end

		it "should find the jean size I'm looking for" do
			Item.leg_opening_search(10).should include(@small_jean)
			Item.leg_opening_search(10).should_not include(@large_jean)
		end

		it "should give me all jeans with no params[:waist]" do
			Item.leg_opening_search(nil).should include(@small_jean && @large_jean)
		end

		describe "with quarter inch jeans in either direction" do
			before do
				@half_up = create(:item, leg_opening: 10.25)
				@half_down = create(:item, leg_opening: 11)
			end

			it "should find the jean size I'm looking for" do
				Item.leg_opening_search(10).should include(@small_jean && @half_down && @half_up)
				Item.leg_opening_search(10).should_not include(@large_jean)
			end
		end
	end
end