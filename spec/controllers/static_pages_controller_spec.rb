require 'spec_helper'

describe StaticPagesController do
	describe "#home" do
		describe "true_waist_search" do
			before do
				@small_jean = create(:item, waist: 32)
				@large_jean = create(:item, waist: 33)
			end

			it "should only return jeans with that query" do
				get :home, { :waist => 32 }
				assigns(:jeans).map(&:id).should == [@small_jean.id]
			end
		end

		describe "price_search" do
			before do
				@cheap_garment = 	 create(:garment, price: 100)
				@expensive_garment = create(:garment, price: 200)
				@cheap_jean = 		 create(:item, garment: @cheap_garment)
				@expensive_jean = 	 create(:item, garment: @expensive_garment)
			end

			it "should only return jeans with that query" do
				get :home, { :min_price => 75, :max_price => 150 }
				assigns(:jeans).map(&:id).should == [@cheap_jean.id]
			end
		end

		describe "garment_search" do
			describe "fit" do
				before do
					@tapered_garment = 		 create(:garment, fit: "tapered")
					@slim_straight_garment = create(:garment, fit: "slim straight")
					@tapered_jean = 		 create(:item, garment: @tapered_garment)
					@slim_straight_jean = 	 create(:item, garment: @slim_straight_garment)
				end

				it "should only return jeans with that query" do
					get :home, { :fit => ["tapered"] }
					assigns(:jeans).map(&:id).should == [@tapered_jean.id]
				end
			end

			describe "made_in" do
				before do
					@USA_garment = 	 create(:garment, made_in: "USA")
					@Japan_garment = create(:garment, made_in: "Japan")
					@USA_jean = 	 create(:item, garment: @USA_garment)
					@Japan_jean = 	 create(:item, garment: @Japan_garment)
				end

				it "should only return jeans with that query" do
					get :home, { :made_in => ["USA"] }
					assigns(:jeans).map(&:id).should == [@USA_jean.id]
				end
			end

			describe "fabric_origin" do
				before do
					@kuroki_mills_garment = create(:garment, fabric_origin: "Kuroki Mills")
					@Japan_garment = 		create(:garment, fabric_origin: "Japan")
					@kuroki_mills_jean = 	create(:item, garment: @kuroki_mills_garment)
					@Japan_jean = 	 		create(:item, garment: @Japan_garment)
				end

				it "should only return jeans with that query" do
					get :home, { :fabric_origin => ["Kuroki Mills"] }
					assigns(:jeans).map(&:id).should == [@kuroki_mills_jean.id]
				end
			end

			describe "color" do
				before do
					@indigo_garment = create(:garment, color: "Indigo")
					@black_garment =  create(:garment, color: "black")
					@indigo_jean = 	  create(:item, garment: @indigo_garment)
					@black_jean = 	  create(:item, garment: @black_garment)
				end

				it "should only return jeans with that query" do
					get :home, { :color => ["Indigo"] }
					assigns(:jeans).map(&:id).should == [@indigo_jean.id]
				end
			end

			describe "brand" do
				before do
					@sixteen_garment = create(:garment, brand: "3sixteen")
					@unbranded_garment =  create(:garment, brand: "Unbranded")
					@sixteen_jean = 	  create(:item, garment: @sixteen_garment)
					@unbranded_jean = 	  create(:item, garment: @unbranded_garment)
				end

				it "should only return jeans with that query" do
					get :home, { :brand => ["3sixteen"] }
					assigns(:jeans).map(&:id).should == [@sixteen_jean.id]
				end
			end
		end

		describe "boolean_search" do
			describe "sanforized" do
				before do
					@true_garment =   create(:garment, sanforized: true)
					@false_garment =  create(:garment, sanforized: false)
					@true_jean = 	  create(:item, garment: @true_garment)
					@false_jean = 	  create(:item, garment: @false_garment)
				end

				it "should only return jeans with that query" do
					get :home, { :sanforized => "true" }
					assigns(:jeans).map(&:id).should == [@true_jean.id]
				end
			end

			describe "selvedge" do
				before do
					@true_garment =   create(:garment, selvedge: true)
					@false_garment =  create(:garment, selvedge: false)
					@true_jean = 	  create(:item, garment: @true_garment)
					@false_jean = 	  create(:item, garment: @false_garment)
				end

				it "should only return jeans with that query" do
					get :home, { :selvedge => "true" }
					assigns(:jeans).map(&:id).should == [@true_jean.id]
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

			it "should only return jeans with that query" do
				get :home, { :min_denim_weight => 11, :max_denim_weight => 13 }
				assigns(:jeans).map(&:id).should == [@light_jean.id]
			end
		end

		describe "front_rise_search" do
			before do
				@small_jean = create(:item, front_rise: 10)
				@large_jean = create(:item, front_rise: 11)
			end

			it "should only return jeans with that query" do
				get :home, { :front_rise => 10 }
				assigns(:jeans).map(&:id).should == [@small_jean.id]
			end
		end

		describe "thigh_search" do
			before do
				@small_jean = create(:item, thigh: 10)
				@large_jean = create(:item, thigh: 11)
			end

			it "should only return jeans with that query" do
				get :home, { :thigh => 10 }
				assigns(:jeans).map(&:id).should == [@small_jean.id]
			end
		end

		describe "knee_search" do
			before do
				@small_jean = create(:item, knee: 10)
				@large_jean = create(:item, knee: 11)
			end

			it "should only return jeans with that query" do
				get :home, { :knee => 10 }
				assigns(:jeans).map(&:id).should == [@small_jean.id]
			end
		end

		describe "leg_opening_search" do
			before do
				@small_jean = create(:item, leg_opening: 10)
				@large_jean = create(:item, leg_opening: 11)
			end

			it "should only return jeans with that query" do
				get :home, { :leg_opening => 10 }
				assigns(:jeans).map(&:id).should == [@small_jean.id]
			end
		end
	end
end