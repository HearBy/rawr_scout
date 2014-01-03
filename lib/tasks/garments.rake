namespace :db do
  desc "Fill database with garments"
  task populate: :environment do
    make_garments
  end
end

def make_garments
	# Create initial admins
	AdminUser.create!(:email => 'mattjstar@gmail.com', :password => 'rawrscout', :password_confirmation => 'rawrscout', :role => 'admin')
	AdminUser.create!(:email => 'deshuck@gmail.com', :password => 'rawrscout', :password_confirmation => 'rawrscout', :role => 'admin')
	AdminUser.create!(:email => 'nick@rawrdenim.com', :password => 'rawrscout', :password_confirmation => 'rawrscout', :role => 'admin')
	AdminUser.create!(:email => 'test@rawrdenim.com', :password => 'rawrscout', :password_confirmation => 'rawrscout', :role => 'item_only')

	#1 3sixteen SL-100x
	Garment.create!(name: "SL-100x",
				   brand: "3sixteen",
				   fabric_origin: "Kuroki Mills",
				   made_in: "USA",
				   price: 215.00,
				   denim_weight: 14.5,
				   color: "Indigo",
				   fit: "slim straight",
				   sanforized: true,
				   stretch: false,
				   selvedge: true,
				   url: "http://www.selfedge.com/shop/index.php?main_page=product_info&cPath=82&products_id=438",
				   photo_url: "http://www.selfedge.com/uploaded_images/3sixteen_straight_01_web-784055.jpg",)
	
	#2 3sixteen ST-100x
	Garment.create!(name: "ST-100x",
				   brand: "3sixteen",
				   color: "Indigo",
				   fabric_origin: "Kuroki Mills",
				   made_in: "USA",
				   denim_weight: 14.5,
				   fit: "slim tapered",
				   sanforized: true,
				   stretch: false,
				   selvedge: true,
				   price: 215.00,
				   url: "http://www.blueowl.us/product/3sixteen-slim-tapered-145oz-selvedge-denim-in-indigo-model-st-100x/",
				   photo_url: "http://www.selfedge.com/uploaded_images/3sixteen_slim_indigo_01_web-748757.jpg")

	#3 Rogue Territory Stanton
	Garment.create!(name: "Stanton 14.5oz",
				   brand: "Rogue Territory",
				   color: "Indigo",
				   fabric_origin: "Nihon Menpu Mills",
				   made_in: "USA",
				   fit: "slim straight",
				   denim_weight: 14.5,
				   sanforized: true,
				   stretch: false,
				   selvedge: true,
				   price: 210.00,
				   url: "http://www.selfedge.com/shop/index.php?main_page=product_info&cPath=82&products_id=438",
				   photo_url: "https://s3.amazonaws.com/assets.svpply.com/large/421454.jpg?1344616828",)

	#4 N&F x Big John x Rockin' Jelly Bean
	Garment.create!(name: "N&F x Big John x Rockin' Jelly Bean Collaboration",
				   brand: "Naked & Famous x Big John",
				   color: "Light Indigo",
				   fabric_origin: "Big John RURI",
				   made_in: "Japan",
				   denim_weight: 14.5,
				   fit: "slim tapered",
				   sanforized: true,
				   stretch: false,
				   selvedge: true,
				   price: 265.00,
				   url: "http://www.blueowl.us/product/naked-and-famous-x-big-john-x-rockin-jelly-bean-super-skinny-guy-145oz-ruri-denim-collaboration/",
				   photo_url: "http://is4.revolveclothing.com/images/p/ip2/pd2/NAKE-MJ101_V4.jpg",)
				   
	#5 APC New Standard
	Garment.create!(name: "New Standard",
				   brand: "APC",
				     color: "Indigo",
				   fabric_origin: "China",
				   made_in: "China",
				   denim_weight: 12,
				   fit: "slim straight",
				   sanforized: true,
				   stretch: true,
				   selvedge: true,
				   price: 185.00,
				   url: "http://www.contextclothing.com/item.php?id=6",
				   photo_url: "http://www.contextclothing.com/images/product/6.jpg",)

	#6 APC Petit Standard
	Garment.create!(name: "Petit Standard",
				   brand: "APC",
				   color: "Indigo",
				   fabric_origin: "China",
				   made_in: "China",
				   denim_weight: 12,
				   sanforized: true,
				   fit: "slim tapered",
				   stretch: true,
				   selvedge: true,
				   price: 185.00,
				   url: "http://www.contextclothing.com/item.php?id=665",
				   photo_url: "http://www.contextclothing.com/images/product/665.jpg",)

	#7 APC Rescue
	Garment.create!(name: "Rescue",
				   brand: "APC",
				   color: "Indigo",
				   fabric_origin: "China",
				   made_in: "China",
				   denim_weight: 12,
				   fit: "straight",
				   sanforized: true,
				   stretch: true,
				   selvedge: true,
				   price: 185.00,
				   url: "http://www.contextclothing.com/item.php?id=7",
				   photo_url: "http://www.contextclothing.com/images/product/7.jpg",)

	#8 APC Petit New Standard
	Garment.create!(name: "Petit New Standard",
				   brand: "APC",
				   color: "Indigo",
				   fabric_origin: "China",
				   made_in: "China",
				   denim_weight: 12,
				   fit: "slim straight",
				   sanforized: true,
				   stretch: true,
				   selvedge: true,
				   price: 185.00,
				   url: "http://www.contextclothing.com/item.php?id=3941",
				   photo_url: "http://www.contextclothing.com/images/product/3941.jpg",)
	
	#9 APC New Cure
	Garment.create!(name: "New Cure",
				   brand: "APC",
				   color: "Indigo",
				   fabric_origin: "China",
				   made_in: "China",
				   denim_weight: 12,
				   fit: "slim tapered",
				   sanforized: true,
				   stretch: true,
				   selvedge: true,
				   price: 185.00,
				   url: "http://www.contextclothing.com/item.php?id=29",
				   photo_url: "http://www.contextclothing.com/images/product/29.jpg",)


	#10 Unbranded 101
	Garment.create!(name: "101",
				   brand: "Unbranded",
				   fabric_origin: "Japan",
				   made_in: "China",
				   price: 78.00,
				   denim_weight: 15,
				   color: "Indigo",
				   fit: "slim tapered",
				   sanforized: true,
				   stretch: false,
				   selvedge: true,
				   url: "http://www.rueandstate.com/collections/unbranded/products/unbranded-101-indigo-skinny-straight-raw-denim",
				   photo_url: "http://www.rawrdenim.com/wp-content/uploads/2012/10/skinny6_1024x1024.jpg",)

	#11 Unbranded 201
	Garment.create!(name: "201",
				   brand: "Unbranded",
				   color: "Indigo",
				   fabric_origin: "Japan",
				   made_in: "China",
				   denim_weight: 14.5,
				   fit: "tapered",
				   sanforized: true,
				   stretch: false,
				   selvedge: true,
				   price: 78.00,
				   url: "http://www.rueandstate.com/collections/unbranded/products/unbranded-201-indigo-tapered",
				   photo_url: "http://images.urbanoutfitters.com/is/image/UrbanOutfitters/16918229_092_b?$zoom$",)

	#12 Unbranded 301
	Garment.create!(name: "301",
				   brand: "Unbranded",
				   color: "Indigo",
				   fabric_origin: "Japan",
				   made_in: "China",
				   fit: "straight",
				   denim_weight: 14.5,
				   sanforized: true,
				   stretch: false,
				   selvedge: true,
				   price: 82.00,
				   url: "http://www.blueowl.us/product/unbranded-straight-leg-145oz-selvedge-in-indigo-model-ub301/",
				   photo_url: "https://s3.amazonaws.com/assets.svpply.com/large/2610244.jpg?1382203913",)

	#13 Unbranded 121
	Garment.create!(name: "121",
				   brand: "Unbranded",
				   color: "Indigo",
				   fabric_origin: "Japan",
				   made_in: "China",
				   denim_weight: 21,
				   fit: "slim tapered",
				   sanforized: true,
				   stretch: false,
				   selvedge: true,
				   price: 110.00,
				   url: "http://www.blueowl.us/product/unbranded-skinny-leg-21oz-heavyweight-selvedge-in-indigo-model-ub121/",
				   photo_url: "http://product.nuji.com/large/5dcf18bc-f18d-45c3-aa0f-fb1fe2ea3f71.jpg",)

	#14 Unbranded 221
	Garment.create!(name: "221",
				   brand: "Unbranded",
				   color: "Indigo",
				   fabric_origin: "Japan",
				   made_in: "China",
				   denim_weight: 21,
				   fit: "tapered",
				   sanforized: true,
				   stretch: false,
				   selvedge: true,
				   price: 110.00,
				   url: "http://www.blueowl.us/product/unbranded-tapered-leg-21oz-heavyweight-selvedge-in-indigo-model-ub221/",
				   photo_url: "http://blog.denimgeek.com/wp-content/uploads/2012/11/UBA.jpg",)

	#15 Unbranded 321
	Garment.create!(name: "321",
				   brand: "Unbranded",
				   color: "Indigo",
				   fabric_origin: "Japan",
				   made_in: "China",
				   denim_weight: 21,
				   fit: "straight",
				   sanforized: true,
				   stretch: false,
				   selvedge: true,
				   price: 110.00,
				   url: "http://www.blueowl.us/product/unbranded-straight-leg-21oz-heavyweight-selvedge-in-indigo-model-ub321/",
				   photo_url: "http://aestheticanthology.files.wordpress.com/2012/12/denim5_1024x1024.jpg?w=1000",)

	#16 Baldwin Henley
	Garment.create!(name: "The Henley",
				   brand: "Baldwin",
				   color: "Indigo",
				   fabric_origin: "Kaihara Mills",
				   made_in: "USA",
				   denim_weight: 12.5,
				   fit: "slim tapered",
				   sanforized: true,
				   stretch: false,
				   selvedge: true,
				   price: 220.00,
				   url: "http://www.blueowl.us/product/baldwin-denim-the-henley-125oz-kaihara-selvedge-denim-in-indigo/",
				   photo_url: "http://cdn.needsupply.com/media/catalog/product/cache/1/image/460x590/e9607dc71bc010050ca2ae6f644b84c1/1/0/1000_thehenleydry3.jpg",)

	#17 Baldwin Reed
	Garment.create!(name: "The Reed",
				   brand: "Baldwin",
				   color: "Indigo",
				   fabric_origin: "Kurabo Mills",
				   made_in: "USA",
				   denim_weight: 14,
				   fit: "slim straight",
				   sanforized: true,
				   stretch: false,
				   selvedge: true,
				   price: 220.00,
				   url: "http://www.blueowl.us/product/baldwin-denim-the-reed-14oz-kurabo-selvedge-denim-in-indigo/",
				   photo_url: "https://baldwindenim.com/store/wp-content/uploads/TheReed_Dry_0005.jpg",)

	#18 Baldwin Samuel
	Garment.create!(name: "The Samuel",
				   brand: "Baldwin",
				   color: "Indigo",
				   fabric_origin: "Kurabo Mills",
				   made_in: "USA",
				   denim_weight: 15,
				   fit: "straight",
				   sanforized: true,
				   stretch: false,
				   selvedge: true,
				   price: 265.00,
				   url: "http://www.blueowl.us/product/baldwin-denim-the-samuel-15oz-kurabo-selvedge-denim-in-indigo/",
				   photo_url: "http://www.rawrdenim.com/wp-content/uploads/2011/07/TheHenley_Kurabo_front.jpg",)

	#19 N&F Super Skinny Okayama Spirit
	Garment.create!(name: "Super Skinny Guy Okayama Spirit",
				   brand: "Naked & Famous",
				   color: "Indigo",
				   fabric_origin: "Japan",
				   made_in: "Canada",
				   denim_weight: 16,
				   fit: "slim tapered",
				   sanforized: false,
				   stretch: false,
				   selvedge: true,
				   price: 200.00,
				   url: "http://www.blueowl.us/product/naked-and-famous-super-skinny-guy-16oz-okayama-spirit-unsanforized-selvedge-denim/",
				   photo_url: "http://tateandyoko.com/images/products/34752.jpg",)

	#20 PBJ xx-014
	Garment.create!(name: "XX-014",
				   brand: "Pure Blue Japan",
				   color: "Purple",
				   fabric_origin: "Japan",
				   made_in: "Japan",
				   denim_weight: 14,
				   fit: "slim tapered",
				   sanforized: false,
				   stretch: false,
				   selvedge: true,
				   price: 315.00,
				   url: "http://blueingreensoho.com/site/index.php?page=shop.product_details&flypage=shop.flypage&product_id=14614&category_id=&manufacturer_id=9&option=com_virtuemart&Itemid=28",
				   photo_url: "http://www.tenuedenimes.com/image/shrink/4595/1200/1500/pure-blue-japan-xx-014-purple-face.jpg",)


end