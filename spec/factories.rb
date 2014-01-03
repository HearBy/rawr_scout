FactoryGirl.define do 
	factory :admin_user do
		sequence(:email) { |n| "person_#{n}@example.com" }
		password 			  'rawrscout'
		password_confirmation 'rawrscout'
		role 				  'admin' 
	end

	factory :garment do
		name 		  "SL-100x"
		brand 		  "3sixteen"
		fabric_origin "Kuroki Mills"
		made_in 	  "USA"
		price 		  215.00
		denim_weight  14.5
		color 		  "Indigo"
		fit 		  "slim straight"
		sanforized 	  true
		stretch 	  false
		selvedge 	  true
		url 		  "http://www.selfedge.com/shop/index.php?main_page=product_info&cPath=82&products_id=438"
		photo_url 	  "http://www.selfedge.com/uploaded_images/3sixteen_straight_01_web-784055-713143.jpg"

		# factory :model_with_jeans do
		# 	ignore do
		# 		items_count 1
		# 	end

		# 	after(:create) do |model, evaluator|
		# 		create_list(:item, evaluator.items_count, model: model)
		# 	end
		# end
	end

	factory :item do
		waist  		31
		front_rise  10.8
		thigh  		11.2
		knee  		8.3
		leg_opening  7.7
		inseam  	37
		tag_size 	30
		garment
		admin_user
	end
end