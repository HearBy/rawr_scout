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
				   url: "http://www.revolveclothing.com/DisplayProduct.jsp?product=3SIX-MJ1&row=0&column=4&c=3sixteen&d=b",
				   photo_url: "http://is4.revolveclothing.com/images/p/n/d/3SIX-MJ1_V1.jpg",)
	
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
				   url: "http://www.revolveclothing.com/DisplayProduct.jsp?product=3SIX-MJ4&row=0&column=0&c=3sixteen&d=b",
				   photo_url: "http://is4.revolveclothing.com/images/p/n/d/3SIX-MJ4_V1.jpg")

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
				   url: "http://needsupply.com/selvage-stanton.html",
				   photo_url: "http://cdn.needsupply.com/media/catalog/product/cache/1/image/460x590/e9607dc71bc010050ca2ae6f644b84c1/2/0/2010081_front_1.jpg",)

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
				   url: "http://www.revolveclothing.com/DisplayProduct.jsp?product=NAKE-MJ101&row=2&column=4&c=Naked+%26+Famous+Denim&d=b",
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
				   url: "http://needsupply.com/raw-new-standard-79415.html",
				   photo_url: "http://cdn.needsupply.com/media/catalog/product/cache/1/image/460x590/e9607dc71bc010050ca2ae6f644b84c1/2/0/2000967_rawnewstand_2_1.jpg",)

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
				   url: "http://needsupply.com/raw-petite-new-standard-3747.html",
				   photo_url: "http://cdn.needsupply.com/media/catalog/product/cache/1/image/460x590/e9607dc71bc010050ca2ae6f644b84c1/2/0/2000992_rawpetitstand_5_1.jpg",)

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
				   url: "http://needsupply.com/raw-rescue-jean-61287.html",
				   photo_url: "http://cdn.needsupply.com/media/catalog/product/cache/1/image/460x590/e9607dc71bc010050ca2ae6f644b84c1/1/2/1223717_rescureraw_5_1.jpg",)

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
				   url: "http://needsupply.com/petit-new-standard.html",
				   photo_url: "http://cdn.needsupply.com/media/catalog/product/cache/1/image/460x590/e9607dc71bc010050ca2ae6f644b84c1/1/0/1004100_front.jpg",)
	
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
				   url: "http://needsupply.com/raw-new-cure-jean-61289.html",
				   photo_url: "http://cdn.needsupply.com/media/catalog/product/cache/1/image/460x590/e9607dc71bc010050ca2ae6f644b84c1/2/0/2000979_rawnewcure_4_1.jpg",)


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
				   url: "http://www.blueowl.us/product/unbranded-straight-leg-145oz-selvedge-in-indigo-name-ub301/",
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
				   url: "http://www.blueowl.us/product/unbranded-skinny-leg-21oz-heavyweight-selvedge-in-indigo-name-ub121/",
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
				   url: "http://www.blueowl.us/product/unbranded-tapered-leg-21oz-heavyweight-selvedge-in-indigo-name-ub221/",
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
				   url: "http://www.blueowl.us/product/unbranded-straight-leg-21oz-heavyweight-selvedge-in-indigo-name-ub321/",
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


	#21 Rogue Territory Indigo SK
	Garment.create!(name: "SK 14.5oz",
				   brand: "Rogue Territory",
				   color: "Indigo",
				   fabric_origin: "Nehon Menpu Mills",
				   made_in: "USA",
				   denim_weight: 14.5,
				   fit: "slim tapered",
				   sanforized: true,
				   stretch: false,
				   selvedge: true,
				   price: 210.00,
				   url: "http://needsupply.com/sk-14-5oz.html",
				   photo_url: "http://cdn.needsupply.com/media/catalog/product/cache/1/image/460x590/e9607dc71bc010050ca2ae6f644b84c1/1/0/1003569_front.jpg",)

	#22 Rogue Territory Black SK
	Garment.create!(name: "Stealth SK 15oz",
				   brand: "Rogue Territory",
				   color: "Black",
				   fabric_origin: "Nehon Menpu Mills",
				   made_in: "USA",
				   denim_weight: 15,
				   fit: "slim tapered",
				   sanforized: true,
				   stretch: false,
				   selvedge: true,
				   price: 210.00,
				   url: "http://needsupply.com/stealth-sk-15oz.html",
				   photo_url: "http://cdn.needsupply.com/media/catalog/product/cache/1/image/460x590/e9607dc71bc010050ca2ae6f644b84c1/1/0/1001786_front.jpg",)

	#23 Naked & Famous Tonal Stitch Weird Guy
	Garment.create!(name: "Tonal Stitch Weird Guy",
				   brand: "Naked & Famous",
				   color: "Indigo",
				   fabric_origin: "Japan",
				   made_in: "Canada",
				   denim_weight: 14,
				   fit: "tapered",
				   sanforized: true,
				   stretch: false,
				   selvedge: true,
				   price: 135.00,
				   url: "http://www.revolveclothing.com/DisplayProduct.jsp?product=NAKE-MJ6&row=4&column=1&c=&s=C&d=d&sc=Raw",
				   photo_url: "http://is4.revolveclothing.com/images/p/n/d/NAKE-MJ6_V1.jpg",)

	#24 Naked & Famous Red Core Weird Guy
	Garment.create!(name: "Red Core Weird Guy",
				   brand: "Naked & Famous",
				   color: "Indigo",
				   fabric_origin: "Japan",
				   made_in: "Canada",
				   denim_weight: 14,
				   fit: "tapered",
				   sanforized: true,
				   stretch: false,
				   selvedge: true,
				   price: 215.00,
				   url: "http://www.revolveclothing.com/DisplayProduct.jsp?product=NAKE-MJ72&c=&s=C&d=d&sc=Raw",
				   photo_url: "http://is4.revolveclothing.com/images/p/n/d/NAKE-MJ72_V1.jpg",)

	#25 Naked & Famous Broken TWill Slim Guy
	Garment.create!(name: "Broken Twill Slim Guy",
				   brand: "Naked & Famous",
				   color: "Indigo",
				   fabric_origin: "Japan",
				   made_in: "Canada",
				   denim_weight: 14,
				   fit: "straight",
				   sanforized: true,
				   stretch: false,
				   selvedge: true,
				   price: 140.00,
				   url: "http://www.revolveclothing.com/DisplayProduct.jsp?product=NAKE-MJ21&row=9&column=0&c=&s=C&d=d&sc=Raw",
				   photo_url: "http://is4.revolveclothing.com/images/p/n/d/NAKE-MJ21_V1.jpg",)

	#26 Naked & Famous Black Power Stretch Super Skinny Guy
	Garment.create!(name: "Black Power Stretch Super Skinny Guy",
				   brand: "Naked & Famous",
				   color: "Black",
				   fabric_origin: "Japan",
				   made_in: "Canada",
				   denim_weight: 12,
				   fit: "slim tapered",
				   sanforized: true,
				   stretch: false,
				   selvedge: true,
				   price: 140.00,
				   url: "http://www.revolveclothing.com/DisplayProduct.jsp?product=NAKE-MJ80&row=9&column=2&c=&s=C&d=d&sc=Raw",
				   photo_url: "http://is4.revolveclothing.com/images/p/n/d/NAKE-MJ80_V1.jpg",)

	#27 Naked & Famous Indigo Stretch Super Skinny Guy
	Garment.create!(name: "Indigo Stretch Super Skinny Guy",
				   brand: "Naked & Famous",
				   color: "Indigo",
				   fabric_origin: "Japan",
				   made_in: "Canada",
				   denim_weight: 12.5,
				   fit: "slim tapered",
				   sanforized: true,
				   stretch: false,
				   selvedge: true,
				   price: 155.00,
				   url: "http://www.revolveclothing.com/DisplayProduct.jsp?code=NAKE-MJ81&c=Naked+%26+Famous+Denim&d=b",
				   photo_url: "http://is4.revolveclothing.com/images/p/n/d/NAKE-MJ81_V2.jpg",)

	#28 Naked & Famous Vintage Nudes Weird Guy
	Garment.create!(name: "Vintage Nudes Weird Guy",
				   brand: "Naked & Famous",
				   color: "Indigo",
				   fabric_origin: "Japan",
				   made_in: "Canada",
				   denim_weight: 12.5,
				   fit: "tapered",
				   sanforized: true,
				   stretch: false,
				   selvedge: true,
				   price: 150.00,
				   url: "http://www.revolveclothing.com/DisplayProduct.jsp?product=NAKE-MJ78&row=0&column=0&c=Naked+%26+Famous+Denim&d=b",
				   photo_url: "http://is4.revolveclothing.com/images/p/n/d/NAKE-MJ78_V1.jpg",)

	#29 Naked & Famous Vintagecast Broken Twill Weird Guy
	Garment.create!(name: "Vintagecast Broken Twill Weird Guy",
				   brand: "Naked & Famous",
				   color: "Light Indigo",
				   fabric_origin: "Japan",
				   made_in: "Canada",
				   denim_weight: 12.5,
				   fit: "tapered",
				   sanforized: true,
				   stretch: false,
				   selvedge: true,
				   price: 148.00,
				   url: "http://www.revolveclothing.com/DisplayProduct.jsp?product=NAKE-MJ96&row=0&column=1&c=Naked+%26+Famous+Denim&d=b",
				   photo_url: "http://is4.revolveclothing.com/images/p/n/d/NAKE-MJ96_V1.jpg",)

	#30 Naked & Famous Midnight Selvedge Weird Guy
	Garment.create!(name: "Midnight Selvedge Weird Guy",
				   brand: "Naked & Famous",
				   color: "Dark Indigo",
				   fabric_origin: "Japan",
				   made_in: "Canada",
				   denim_weight: 13,
				   fit: "tapered",
				   sanforized: true,
				   stretch: false,
				   selvedge: true,
				   price: 155.00,
				   url: "http://www.revolveclothing.com/DisplayProduct.jsp?product=NAKE-MJ103&row=0&column=2&c=Naked+%26+Famous+Denim&d=b",
				   photo_url: "http://is4.revolveclothing.com/images/p/n/d/NAKE-MJ103_V1.jpg",)

	#31 Naked & Famous Grey Stretch Skinny Guy
	Garment.create!(name: "Grey Stretch Skinny Guy",
				   brand: "Naked & Famous",
				   color: "Gray",
				   fabric_origin: "Japan",
				   made_in: "Canada",
				   denim_weight: 12,
				   fit: "slim tapered",
				   sanforized: true,
				   stretch: false,
				   selvedge: true,
				   price: 140.00,
				   url: "http://www.revolveclothing.com/DisplayProduct.jsp?product=NAKE-MJ36&row=0&column=3&c=Naked+%26+Famous+Denim&d=b",
				   photo_url: "http://is4.revolveclothing.com/images/p/n/d/NAKE-MJ36_V1.jpg",)

	#32 Naked & Famous Dirty Fade Weird Guy
	Garment.create!(name: "Dirty Fade Weird Guy",
				   brand: "Naked & Famous",
				   color: "Indigo",
				   fabric_origin: "Japan",
				   made_in: "Canada",
				   denim_weight: 14.5,
				   fit: "tapered",
				   sanforized: true,
				   stretch: false,
				   selvedge: true,
				   price: 158.00,
				   url: "http://www.revolveclothing.com/DisplayProduct.jsp?product=NAKE-MJ67&row=1&column=0&c=Naked+%26+Famous+Denim&d=b",
				   photo_url: "http://is4.revolveclothing.com/images/p/n/d/NAKE-MJ67_V1.jpg",)

	#33 Naked & Famous Rainbow Core Weird Guy
	Garment.create!(name: "Rainbow Core Weird Guy",
				   brand: "Naked & Famous",
				   color: "Indigo",
				   fabric_origin: "Japan",
				   made_in: "Canada",
				   denim_weight: 14,
				   fit: "tapered",
				   sanforized: true,
				   stretch: false,
				   selvedge: true,
				   price: 195.00,
				   url: "http://www.revolveclothing.com/DisplayProduct.jsp?product=NAKE-MJ102&c=Naked+%26+Famous+Denim&d=b",
				   photo_url: "http://is4.revolveclothing.com/images/p/n/d/NAKE-MJ102_V1.jpg",)

	#34 Naked & Famous Arctic Selvedge Weird Guy
	Garment.create!(name: "Arctic Selvedge Weird Guy",
				   brand: "Naked & Famous",
				   color: "Gray",
				   fabric_origin: "Japan",
				   made_in: "Canada",
				   denim_weight: 13,
				   fit: "tapered",
				   sanforized: true,
				   stretch: false,
				   selvedge: true,
				   price: 176.00,
				   url: "http://www.revolveclothing.com/DisplayProduct.jsp?product=NAKE-MJ100&row=2&column=3&c=Naked+%26+Famous+Denim&d=b",
				   photo_url: "http://is4.revolveclothing.com/images/p/n/d/NAKE-MJ100_V1.jpg",)

	#35 Naked & Famous Flannel Weird Guy
	Garment.create!(name: "Flannel Denim Weird Guy",
				   brand: "Naked & Famous",
				   color: "Indigo",
				   fabric_origin: "Japan",
				   made_in: "Canada",
				   denim_weight: 11,
				   fit: "tapered",
				   sanforized: true,
				   stretch: false,
				   selvedge: true,
				   price: 140.00,
				   url: "http://www.revolveclothing.com/DisplayProduct.jsp?product=NAKE-MJ98&row=3&column=0&c=Naked+%26+Famous+Denim&d=b",
				   photo_url: "http://is4.revolveclothing.com/images/p/n/d/NAKE-MJ98_V1.jpg",)

	#36 Naked & Famous Midnight Power Stretch
	Garment.create!(name: "Midnight Power Stretch Skinny Guy",
				   brand: "Naked & Famous",
				   color: "Dark Indigo",
				   fabric_origin: "Japan",
				   made_in: "Canada",
				   denim_weight: 12,
				   fit: "slim tapered",
				   sanforized: true,
				   stretch: false,
				   selvedge: true,
				   price: 155.00,
				   url: "http://www.revolveclothing.com/DisplayProduct.jsp?product=NAKE-MJ93&row=4&column=1&c=Naked+%26+Famous+Denim&d=b",
				   photo_url: "http://is4.revolveclothing.com/images/p/n/d/NAKE-MJ93_V1.jpg",)

	#37 Naked & Famous Heather Gray Stretch Skinny Guy
	Garment.create!(name: "Heather Gray Stretch Skinny Guy",
				   brand: "Naked & Famous",
				   color: "Gray",
				   fabric_origin: "Japan",
				   made_in: "Canada",
				   denim_weight: 11,
				   fit: "slim tapered",
				   sanforized: true,
				   stretch: false,
				   selvedge: true,
				   price: 155.00,
				   url: "http://www.revolveclothing.com/DisplayProduct.jsp?product=NAKE-MJ94&row=4&column=2&c=Naked+%26+Famous+Denim&d=b",
				   photo_url: "http://is4.revolveclothing.com/images/p/n/d/NAKE-MJ94_V1.jpg",)

	#38 Naked & Famous Stretch Weird Guy
	Garment.create!(name: "Stretch Selvedge Weird Guy",
				   brand: "Naked & Famous",
				   color: "Indigo",
				   fabric_origin: "Japan",
				   made_in: "Canada",
				   denim_weight: 12.5,
				   fit: "tapered",
				   sanforized: true,
				   stretch: false,
				   selvedge: true,
				   price: 155.00,
				   url: "http://www.revolveclothing.com/DisplayProduct.jsp?product=NAKE-MJ79&row=6&column=1&c=Naked+%26+Famous+Denim&d=b",
				   photo_url: "http://is4.revolveclothing.com/images/p/n/d/NAKE-MJ79_V1.jpg",)

	#39 Naked & Famous Suvin Selvedge Weird Guy
	Garment.create!(name: "Suvin Selvedge Weird Guy",
				   brand: "Naked & Famous",
				   color: "Indigo",
				   fabric_origin: "Japan",
				   made_in: "Canada",
				   denim_weight: 13,
				   fit: "tapered",
				   sanforized: true,
				   stretch: false,
				   selvedge: true,
				   price: 160.00,
				   url: "http://www.revolveclothing.com/DisplayProduct.jsp?product=NAKE-MJ86&row=6&column=3&c=Naked+%26+Famous+Denim&d=b",
				   photo_url: "http://is4.revolveclothing.com/images/p/n/d/NAKE-MJ86_V1.jpg",)

	#40 Naked & Famous x Kamikaze Attack Skinny Guy
	Garment.create!(name: "Naked & Famous x Kamikaze Attack Skinny Guy",
				   brand: "Naked & Famous x Kamizake Attack",
				   color: "Black",
				   fabric_origin: "Japan",
				   made_in: "Canada",
				   denim_weight: 14.5,
				   fit: "slim tapered",
				   sanforized: true,
				   stretch: false,
				   selvedge: true,
				   price: 260.00,
				   url: "http://www.revolveclothing.com/DisplayProduct.jsp?product=NAKE-MJ77&row=6&column=4&c=Naked+%26+Famous+Denim&d=b",
				   photo_url: "http://is4.revolveclothing.com/images/p/n/d/NAKE-MJ77_V1.jpg",)
	
	#41 Naked & Famous Black Power Stretch Skinny Guy
	Garment.create!(name: "Black Power Stretch Skinny Guy",
				   brand: "Naked & Famous",
				   color: "Black",
				   fabric_origin: "Japan",
				   made_in: "Canada",
				   denim_weight: 12,
				   fit: "slim tapered",
				   sanforized: true,
				   stretch: false,
				   selvedge: true,
				   price: 140.00,
				   url: "http://www.revolveclothing.com/DisplayProduct.jsp?product=NAKE-MJ9&row=7&column=0&c=Naked+%26+Famous+Denim&d=b",
				   photo_url: "http://is4.revolveclothing.com/images/p/n/d/NAKE-MJ9_V1.jpg",)


	#42 3sixteen ST-220x
	Garment.create!(name: "ST-220x",
				   brand: "3sixteen",
				   color: "Black",
				   fabric_origin: "Kuroki Mills",
				   made_in: "Japan",
				   denim_weight: 14,
				   fit: "slim tapered",
				   sanforized: true,
				   stretch: false,
				   selvedge: true,
				   price: 230.00,
				   url: "http://www.revolveclothing.com/DisplayProduct.jsp?product=3SIX-MJ10&row=0&column=1&c=3sixteen&d=b",
				   photo_url: "http://is4.revolveclothing.com/images/p/n/d/3SIX-MJ10_V1.jpg",)

	#43 3sixteen SL-200x
	Garment.create!(name: "SL-200x",
				   brand: "3sixteen",
				   color: "Black",
				   fabric_origin: "Kuroki Mills",
				   made_in: "USA",
				   denim_weight: 14.5,
				   fit: "slim straight",
				   sanforized: true,
				   stretch: false,
				   selvedge: true,
				   price: 215.00,
				   url: "http://www.revolveclothing.com/DisplayProduct.jsp?product=3SIX-MJ2&row=0&column=2&c=3sixteen&d=b",
				   photo_url: "http://is4.revolveclothing.com/images/p/n/d/3SIX-MJ2_V1.jpg",)

	#44 3sixteen SL-220x
	Garment.create!(name: "SL-220x",
				   brand: "3sixteen",
				   color: "Black",
				   fabric_origin: "Kuroki Mills",
				   made_in: "Japan",
				   denim_weight: 14,
				   fit: "slim tapered",
				   sanforized: true,
				   stretch: false,
				   selvedge: true,
				   price: 230.00,
				   url: "http://www.revolveclothing.com/DisplayProduct.jsp?product=3SIX-MJ8&row=0&column=3&c=3sixteen&d=b",
				   photo_url: "http://is4.revolveclothing.com/images/p/n/d/3SIX-MJ8_V1.jpg",)

	#45 Cheap Monday High Slim Black
	Garment.create!(name: "High Slim",
				   brand: "Cheap Monday",
				   color: "Black",
				   fabric_origin: "China",
				   made_in: "China",
				   denim_weight: 12,
				   fit: "slim straight",
				   sanforized: true,
				   stretch: false,
				   selvedge: false,
				   price: 90.00,
				   url: "http://www.revolveclothing.com/DisplayProduct.jsp?product=CHEA-MJ86&row=1&column=0&c=Cheap+Monday&d=b",
				   photo_url: "http://is4.revolveclothing.com/images/p/n/d/CHEA-MJ86_V1.jpg",)

	#46 Nudie Thin Finn
	Garment.create!(name: "Thin Finn Organic Dry",
				   brand: "Nudie",
				   color: "Indigo",
				   fabric_origin: "Turkey",
				   made_in: "Turkey",
				   denim_weight: 12,
				   fit: "slim tapered",
				   sanforized: true,
				   stretch: false,
				   selvedge: false,
				   price: 179.00,
				   url: "http://www.revolveclothing.com/DisplayProduct.jsp?product=NUDI-MJ187&row=0&column=2&c=Nudie+Jeans&d=b",
				   photo_url: "http://is4.revolveclothing.com/images/p/n/d/NUDI-MJ187_V1.jpg",)

	#47 APC New Standard Black
	Garment.create!(name: "New Standard",
				   brand: "APC",
				   color: "Black",
				   fabric_origin: "China",
				   made_in: "China",
				   denim_weight: 12,
				   fit: "slim straight",
				   sanforized: true,
				   stretch: true,
				   selvedge: true,
				   price: 185.00,
				   url: "http://needsupply.com/new-standard-black.html",
				   photo_url: "http://cdn.needsupply.com/media/catalog/product/cache/1/image/460x590/e9607dc71bc010050ca2ae6f644b84c1/0/2/021012197m_newstandblack_4.jpg",)

	#48 APC Petit Standard Black
	Garment.create!(name: "Petit",
				   brand: "Standard",
				   color: "Black",
				   fabric_origin: "China",
				   made_in: "China",
				   denim_weight: 12,
				   fit: "slim tapered",
				   sanforized: true,
				   stretch: true,
				   selvedge: true,
				   price: 185.00,
				   url: "http://needsupply.com/petit-standard-black.html",
				   photo_url: "http://cdn.needsupply.com/media/catalog/product/cache/1/image/460x590/e9607dc71bc010050ca2ae6f644b84c1/2/0/2000280_petitnewstand_5_2.jpg",)

	#49 Tellason John Graham Mellor
	Garment.create!(name: "John Graham Mellor",
				   brand: "Tellason",
				   color: "Indigo",
				   fabric_origin: "Cone Mills",
				   made_in: "USA",
				   denim_weight: 12.5,
				   fit: "slim straight",
				   sanforized: true,
				   stretch: false,
				   selvedge: true,
				   price: 198.00,
				   url: "http://needsupply.com/raw-slim-straight.html",
				   photo_url: "http://cdn.needsupply.com/media/catalog/product/cache/1/image/460x590/e9607dc71bc010050ca2ae6f644b84c1/2/0/2001387_1_1.jpg",)

	#50 Tellason Ladbroke Grove
	Garment.create!(name: "Ladbroke Grove",
				   brand: "Tellason",
				   color: "Indigo",
				   fabric_origin: "Cone Mills",
				   made_in: "USA",
				   denim_weight: 14.75,
				   fit: "straight",
				   sanforized: true,
				   stretch: false,
				   selvedge: true,
				   price: 198.00,
				   url: "http://needsupply.com/ladbroke-grove-14-75.html",
				   photo_url: "http://cdn.needsupply.com/media/catalog/product/cache/1/image/460x590/e9607dc71bc010050ca2ae6f644b84c1/1/0/1003803__104.jpg",)

	#51 United Stock Dry Goods Slight Indigo
	Garment.create!(name: "Slight",
				   brand: "United Stock Dry Goods",
				   color: "Indigo",
				   fabric_origin: "Japan",
				   made_in: "USA",
				   denim_weight: 12.5,
				   fit: "slim tapered",
				   sanforized: true,
				   stretch: true,
				   selvedge: true,
				   price: 140.00,
				   url: "http://needsupply.com/slight-indigo.html",
				   photo_url: "http://cdn.needsupply.com/media/catalog/product/cache/1/image/460x590/e9607dc71bc010050ca2ae6f644b84c1/1/0/1001766_front.jpg",)

	#52 United Stock Dry Goods Narrow
	Garment.create!(name: "Narrow",
				   brand: "United Stock Dry Goods",
				   color: "Indigo",
				   fabric_origin: "Japan",
				   made_in: "USA",
				   denim_weight: 12.5,
				   fit: "slim straight",
				   sanforized: true,
				   stretch: true,
				   selvedge: true,
				   price: 135.00,
				   url: "http://needsupply.com/narrow-indigo.html",
				   photo_url: "http://cdn.needsupply.com/media/catalog/product/cache/1/image/460x590/e9607dc71bc010050ca2ae6f644b84c1/2/0/2001943_narrowindigo_6.jpg",)

	#53 Wings+Horns Slim 5 Pocket Jeans
	Garment.create!(name: "Slim 5-Pocket Jean",
				   brand: "Wings+Horns",
				   color: "Indigo",
				   fabric_origin: "Cone Mills",
				   made_in: "USA",
				   denim_weight: 13.5,
				   fit: "slim straight",
				   sanforized: true,
				   stretch: false,
				   selvedge: true,
				   price: 185.00,
				   url: "http://needsupply.com/slim-fit-5-pocket-jean.html",
				   photo_url: "http://cdn.needsupply.com/media/catalog/product/cache/1/image/460x590/e9607dc71bc010050ca2ae6f644b84c1/1/0/1003999_front.jpg",)

	#54 Rogue Territory Navy Selvage Stanton
	Garment.create!(name: "Tonal Stitch Stanton",
				   brand: "Rogue Territory",
				   color: "Indigo",
				   fabric_origin: "Nihon Menpu",
				   made_in: "USA",
				   denim_weight: 14.5,
				   fit: "slim straight",
				   sanforized: true,
				   stretch: false,
				   selvedge: true,
				   price: 210.00,
				   url: "http://needsupply.com/navy-selvage-stanton.html",
				   photo_url: "http://cdn.needsupply.com/media/catalog/product/cache/1/image/460x590/e9607dc71bc010050ca2ae6f644b84c1/1/0/1006208_front.jpg",)

	#55 Raleigh Denim Martin Tinted
	Garment.create!(name: "Martin Tinted",
				   brand: "Raleigh Denim",
				   color: "Indigo",
				   fabric_origin: "Cone Mills",
				   made_in: "USA",
				   denim_weight: 12.5,
				   fit: "slim tapered",
				   sanforized: true,
				   stretch: false,
				   selvedge: true,
				   price: 225.00,
				   url: "http://needsupply.com/mens/brands/raleigh-denim/martin-tinted.html",
				   photo_url: "http://cdn.needsupply.com/media/catalog/product/cache/1/image/460x590/e9607dc71bc010050ca2ae6f644b84c1/1/0/1005544_front.jpg",)

	#56 Raleigh Denim Alexander Original
	Garment.create!(name: "Alexander Original Selvedge",
				   brand: "Raleigh Denim",
				   color: "Indigo",
				   fabric_origin: "Cone Mills",
				   made_in: "USA",
				   denim_weight: 12.5,
				   fit: "slim straight",
				   sanforized: true,
				   stretch: false,
				   selvedge: true,
				   price: 285.00,
				   url: "http://needsupply.com/mens/brands/raleigh-denim/alexander-original-selvage.html",
				   photo_url: "http://cdn.needsupply.com/media/catalog/product/cache/1/image/460x590/e9607dc71bc010050ca2ae6f644b84c1/2/0/2003300_front_1.jpg",)

	#57 Raleigh Denim Jones Original Selvedge
	Garment.create!(name: "Jones Original Selvedge",
				   brand: "Raleigh Denim",
				   color: "Indigo",
				   fabric_origin: "Cone Mills",
				   made_in: "USA",
				   denim_weight: 12.5,
				   fit: "straight",
				   sanforized: true,
				   stretch: false,
				   selvedge: true,
				   price: 285.00,
				   url: "http://needsupply.com/mens/brands/raleigh-denim/jones-original-selvage.html",
				   photo_url: "http://cdn.needsupply.com/media/catalog/product/cache/1/image/460x590/e9607dc71bc010050ca2ae6f644b84c1/1/0/1000922_1.jpg",)

	#58 Han Kjobenhavn Hand Dyed Raw
	Garment.create!(name: "Hand Dye Raw",
				   brand: "Han Kjobenhavn",
				   color: "Light Indigo",
				   fabric_origin: "Japan",
				   made_in: "Unspecified",
				   denim_weight: 12,
				   fit: "tapered",
				   sanforized: true,
				   stretch: false,
				   selvedge: true,
				   price: 180.00,
				   url: "http://needsupply.com/hand-dye-raw-tapered-denim.html#",
				   photo_url: "http://cdn.needsupply.com/media/catalog/product/cache/1/image/460x590/e9607dc71bc010050ca2ae6f644b84c1/1/0/1007269_front.jpg",)

	#59 Baldwin Henley in White Oak
	Garment.create!(name: "The Henley",
				   brand: "Baldwin",
				   color: "Indigo",
				   fabric_origin: "Cone Mills",
				   made_in: "USA",
				   denim_weight: 12.5,
				   fit: "slim tapered",
				   sanforized: true,
				   stretch: false,
				   selvedge: true,
				   price: 220.00,
				   url: "http://needsupply.com/the-henley-dry-stretch-60074.html",
				   photo_url: "http://cdn.needsupply.com/media/catalog/product/cache/1/image/460x590/e9607dc71bc010050ca2ae6f644b84c1/2/0/2000452_thehenleydrystretch_5.jpg",)

	#60 The Reed in White Oak
	Garment.create!(name: "The Reed",
				   brand: "Baldwin",
				   color: "Indigo",
				   fabric_origin: "Cone Mills",
				   made_in: "USA",
				   denim_weight: 13,
				   fit: "straight",
				   sanforized: true,
				   stretch: false,
				   selvedge: true,
				   price: 220.00,
				   url: "http://needsupply.com/the-reed-dry.html",
				   photo_url: "http://cdn.needsupply.com/media/catalog/product/cache/1/image/460x590/e9607dc71bc010050ca2ae6f644b84c1/2/0/20004472_thereeddry_1.jpg",)


end