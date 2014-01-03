namespace :db do
  desc "Fill database with items"
  task populate: :environment do
    make_items
  end
end

def make_items
#1 3sixteen SL-100x
	
	#size 28
		Item.create!(garment_id:1,
					 tag_size: 28,
				   waist: 29,
				   front_rise: 10.3,
				   thigh: 10.7,
				   knee: 8.2,
				   leg_opening: 7.3,
				   inseam: 37)

	#size 29
		Item.create!(garment_id:1,
					tag_size: 29,
				   waist: 30,
				   front_rise: 10.4,
				   thigh: 11.0,
				   knee: 8.3,
				   leg_opening: 7.5,
					inseam: 37)

	#size 30
		Item.create!(waist: 31,
				   front_rise: 10.8,
				   thigh: 11.2,
				   knee: 8.3,
				   leg_opening: 7.7,
				   inseam: 37,
				   tag_size: 30,
				   garment_id:1,)

	#size 31
		Item.create!(garment_id:1,
					tag_size: 31,
				   waist: 32,
				   front_rise: 11,
				   thigh: 11.3,
				   knee: 8.4,
				   leg_opening: 7.8,
					inseam: 37)

	#size 32
		Item.create!(garment_id:1,
					tag_size: 32,
				   waist: 33,
				   front_rise: 11.1,
				   thigh: 11.7,
				   knee: 8.7,
				   leg_opening: 7.9,
					inseam: 37)

	#size 33
		Item.create!(garment_id:1,
					tag_size: 33,
				   waist: 34,
				   front_rise: 11.3,
				   thigh: 12,
				   knee: 8.8,
				   leg_opening: 8,
					inseam: 37)

	#size 34
		Item.create!(garment_id:1,
					tag_size: 34,
				   waist: 35,
				   front_rise: 11.7,
				   thigh: 12.3,
				   knee: 9.1,
				   leg_opening: 8.2,
					inseam: 37)

	#size 36
		Item.create!(garment_id:1,
					tag_size: 36,
				   waist: 37,
				   front_rise: 12.1,
				   thigh: 12.7,
				   knee: 9.5,
				   leg_opening: 8.6,
					inseam: 37)

	#size 38
		Item.create!(garment_id:1,
					tag_size: 38,
				   waist: 39,
				   front_rise: 12.3,
				   thigh: 13,
				   knee: 9.5,
				   leg_opening: 9,
					inseam: 37)

	#size 40
		Item.create!(garment_id:1,
					tag_size: 40,
				   waist: 41,
				   front_rise: 12.5,
				   thigh: 14,
				   knee: 9.8,
				   leg_opening: 9.1,
					inseam: 37)

#2 3sixteen ST-100x

	#size 28
		Item.create!(garment_id: 2,
					tag_size: 28,
					waist: 28.5,
					front_rise: 10.15,
					thigh: 10.15,
					knee: 7.25,
					leg_opening: 7,
					inseam: 37)

	#size 29
		Item.create!(garment_id: 2,
					tag_size: 29,
					waist: 29.5,
					front_rise: 10.25,
					thigh: 10.5,
					knee: 7.5,
					leg_opening: 7.15,
					inseam: 37)

	#size 30
		Item.create!(garment_id: 2,
					tag_size: 30,
					waist: 30.5,
					front_rise: 10.5,
					thigh: 11,
					knee: 7.75,
					leg_opening: 7.25,
					inseam: 37)

	#size 31
		Item.create!(garment_id: 2,
					tag_size: 31,
					waist: 31.5,
					front_rise: 10.75,
					thigh: 11.25,
					knee: 8,
					leg_opening: 7.4,
					inseam: 37)

	#size 32
		Item.create!(garment_id: 2,
					tag_size: 32,
					waist: 32.5,
					front_rise: 10.75,
					thigh: 11.5,
					knee: 8,
					leg_opening: 7.5,
					inseam: 37)

	#size 33
		Item.create!(garment_id: 2,
					tag_size: 33,
					waist: 33.5,
					front_rise: 10.75,
					thigh: 11.5,
					knee: 8,
					leg_opening: 7.65,
					inseam: 37)

	#size 34
		Item.create!(garment_id: 2,
					tag_size: 34,
					waist: 34.5,
					front_rise: 10.75,
					thigh: 12,
					knee: 8.25,
					leg_opening: 7.75,
					inseam: 37)

	#size 36
		Item.create!(garment_id: 2,
					tag_size: 36,
					waist: 36.75,
					front_rise: 11,
					thigh: 12.5,
					knee: 8.7,
					leg_opening: 8,
					inseam: 37)

#3 Rogue Territory Stanton
	#size 26
		Item.create!(garment_id: 3,
					tag_size: 26,
				   waist: 28.5,
				   front_rise: 9.75,
				   thigh: 10.5,
				   knee: 7,
				   leg_opening: 6.5,
				   inseam: 36)

	#size 27
		Item.create!(garment_id: 3,
					tag_size: 27,
				   waist: 29.5,
				   front_rise: 9.75,
				   thigh: 11,
				   knee: 7.25,
				   leg_opening: 6.75,
				   inseam: 36)

	#size 28
		Item.create!(garment_id: 3,
					tag_size: 28,
				   waist: 30.5,
				   front_rise: 10,
				   thigh: 11.25,
				   knee: 7.5,
				   leg_opening: 7,
				   inseam: 36)

	#size 29
		Item.create!(garment_id: 3,
					tag_size: 29,
				   waist: 31.5,
				   front_rise: 10.25,
				   thigh: 11.5,
				   knee: 8,
				   leg_opening: 7.5,
				   inseam: 36)

	#size 30
		Item.create!(garment_id: 3,
					tag_size: 30,
				   waist: 32.5,
				   front_rise: 10.25,
				   thigh: 11.75,
				   knee: 8.25,
				   leg_opening: 7.75,
				   inseam: 36)

	#size 31
		Item.create!(garment_id: 3,
					tag_size: 31,
				   waist: 33.5,
				   front_rise: 10.5,
				   thigh: 12,
				   knee: 8.5,
				   leg_opening: 8,
				   inseam: 36)

	#size 32
		Item.create!(garment_id: 3,
					tag_size: 32,
				   waist: 34.5,
				   front_rise: 10.5,
				   thigh: 12.5,
				   knee: 8.75,
				   leg_opening: 8.25,
				   inseam: 36)

	#size 33
		Item.create!(garment_id: 3,
					tag_size: 33,
				   waist: 35.5,
				   front_rise: 10.75,
				   thigh: 12.75,
				   knee: 9,
				   leg_opening: 8.5,
				   inseam: 36)

	#size 34
		Item.create!(garment_id: 3,
					tag_size: 34,
				   waist: 36.5,
				   front_rise: 11,
				   thigh: 13,
				   knee: 9.25,
				   leg_opening: 8.75,
				   inseam: 36)

	#size 36
		Item.create!(garment_id: 3,
					tag_size: 36,
				   waist: 38.5,
				   front_rise: 11.25,
				   thigh: 13.5,
				   knee: 9.75,
				   leg_opening: 9,
				   inseam: 36)

	#size 38
		Item.create!(garment_id: 3,
					tag_size: 38,
				   waist: 40.5,
				   front_rise: 11.25,
				   thigh: 15,
				   knee: 10,
				   leg_opening: 9.25,
				   inseam: 36)

#4 N&F x Big John x Rockin' Jelly Bean
	#size 28
		Item.create!(garment_id: 4,
					tag_size: 28,
				   waist: 28.5,
				   front_rise: 9.25,
				   thigh: 9.75,
				   knee: 7.5,
				   leg_opening: 6,
				   inseam: 34)

	#size 29
		Item.create!(garment_id: 4,
					tag_size: 29,
				   waist: 29.5,
				   front_rise: 9.25,
				   thigh: 10.25,
				   knee: 7.75,
				   leg_opening: 6.5,
				   inseam: 34)

	#size 30
		Item.create!(garment_id: 4,
					tag_size: 30,
				   waist: 30.5,
				   front_rise: 9.5,
				   thigh: 10.5,
				   knee: 8,
				   leg_opening: 6.5,
				   inseam: 34)

	#size 31
		Item.create!(garment_id: 4,
					tag_size: 31,
				   waist: 31.5,
				   front_rise: 9.5,
				   thigh: 10.5,
				   knee: 8.15,
				   leg_opening: 6.75,
				   inseam: 34)

	#size 32
		Item.create!(garment_id: 4,
					tag_size: 32,
				   waist: 32.5,
				   front_rise: 9.75,
				   thigh: 10.75,
				   knee: 8.25,
				   leg_opening: 7,
				   inseam: 34)

	#size 33
		Item.create!(garment_id: 4,
					tag_size: 33,
				   waist: 33.5,
				   front_rise: 9.75,
				   thigh: 11.15,
				   knee: 8.5,
				   leg_opening: 7,
				   inseam: 34)

	#size 34
		Item.create!(garment_id: 4,
					tag_size: 34,
				   waist: 34.5,
				   front_rise: 9.75,
				   thigh: 11.5,
				   knee: 8.75,
				   leg_opening: 7.25,
				   inseam: 34)

	#size 36
		Item.create!(garment_id: 4,
					tag_size: 36,
				   waist: 36,
				   front_rise: 10,
				   thigh: 12,
				   knee: 9.25,
				   leg_opening: 7.75,
				   inseam: 34)

#5 APC New Standard
	#size 25
		Item.create!(garment_id: 5,
					tag_size: 25,
				   waist: 26,
				   front_rise: 9.5,
				   thigh: 9.5,
				   knee: 7,
				   leg_opening: 6.5,
				   inseam: 33.5)

	#size 26
		Item.create!(garment_id: 5,
					tag_size: 26,
				   waist: 27,
				   front_rise: 10,
				   thigh: 10,
				   knee: 7.5,
				   leg_opening: 7,
				   inseam: 33.5)

	#size 27
		Item.create!(garment_id: 5,
					tag_size: 27,
				   waist: 28,
				   front_rise: 10,
				   thigh: 10,
				   knee: 7.5,
				   leg_opening: 7,
				   inseam: 33.5)

	#size 28
		Item.create!(garment_id: 5,
					tag_size: 28,
				   waist: 29,
				   front_rise: 9.5,
				   thigh: 10,
				   knee: 7.5,
				   leg_opening: 7,
				   inseam: 33.5)

	#size 29
		Item.create!(garment_id: 5,
					tag_size: 29,
				   waist: 30,
				   front_rise: 10,
				   thigh: 11,
				   knee: 8,
				   leg_opening: 7.5,
				   inseam: 33.5)

	#size 30
		Item.create!(garment_id: 5,
					tag_size: 30,
				   waist: 31,
				   front_rise: 10,
				   thigh: 11,
				   knee: 8,
				   leg_opening: 7.5,
				   inseam: 34.5)

	#size 31
		Item.create!(garment_id: 5,
					tag_size: 31,
				   waist: 32,
				   front_rise: 10,
				   thigh: 11.5,
				   knee: 8.5,
				   leg_opening: 8,
				   inseam: 35.5)

	#size 32
		Item.create!(garment_id: 5,
					tag_size: 32,
				   waist: 33,
				   front_rise: 10,
				   thigh: 11.5,
				   knee: 8.5,
				   leg_opening: 8,
				   inseam: 35.5)

	#size 33
		Item.create!(garment_id: 5,
					 tag_size: 33,
				   waist: 34,
				   front_rise: 10.5,
				   thigh: 12,
				   knee: 9,
				   leg_opening: 8.5,
				   inseam: 36)

	#size 34
		Item.create!(garment_id: 5,
					tag_size: 34,
				   waist: 35,
				   front_rise: 10.5,
				   thigh: 12,
				   knee: 9,
				   leg_opening: 8.5,
				   inseam: 36)

	#size 35
		Item.create!(garment_id: 5,
					tag_size: 35,
				   waist: 36,
				   front_rise: 11,
				   thigh: 12.5,
				   knee: 9.5,
				   leg_opening: 9,
				   inseam: 36)

	#size 36
		Item.create!(garment_id: 5,
					tag_size: 36,
				   waist: 37,
				   front_rise: 11,
				   thigh: 12.5,
				   knee: 9.5,
				   leg_opening: 9,
				   inseam: 36.5)

#6 APC Petit Standard
	#size 25
		Item.create!(garment_id: 6,
					tag_size: 25,
				   waist: 26,
				   front_rise: 9,
				   thigh: 9.5,
				   knee: 6.5,
				   leg_opening: 6,
				   inseam: 33)

	#size 26
		Item.create!(garment_id: 6,
					tag_size: 26,
				   waist: 27,
				   front_rise: 9,
				   thigh: 10,
				   knee: 6.5,
				   leg_opening: 6,
				   inseam: 33)

	#size 27
		Item.create!(garment_id: 6,
					tag_size: 27,
				   waist: 28,
				   front_rise: 9,
				   thigh: 10,
				   knee: 7,
				   leg_opening: 6,
				   inseam: 33)

	#size 28
		Item.create!(garment_id: 6,
					tag_size: 28,
				   waist: 29,
				   front_rise: 9,
				   thigh: 10.5,
				   knee: 7.5,
				   leg_opening: 6.5,
				   inseam: 33)

	#size 29
		Item.create!(garment_id: 6,
					tag_size: 29,
				   waist: 30,
				   front_rise: 9.5,
				   thigh: 10.5,
				   knee: 7.5,
				   leg_opening: 6.5,
				   inseam: 33.5)

	#size 30
		Item.create!(garment_id: 6,
					tag_size: 30,
				   waist: 31,
				   front_rise: 9.5,
				   thigh: 10.5,
				   knee: 7.5,
				   leg_opening: 6.5,
				   inseam: 33.5)

	#size 31
		Item.create!(garment_id: 6,
					tag_size: 31,
				   waist: 32,
				   front_rise: 9.5,
				   thigh: 11,
				   knee: 8,
				   leg_opening: 7,
				   inseam: 33.5)

	#size 32
		Item.create!(garment_id: 6,
					tag_size: 32,
				   waist: 33,
				   front_rise: 10,
				   thigh: 11.5,
				   knee: 8,
				   leg_opening: 7,
				   inseam: 34)

	#size 33
		Item.create!(garment_id: 6,
					tag_size: 33,
				   waist: 34,
				   front_rise: 10,
				   thigh: 12,
				   knee: 8.5,
				   leg_opening: 7.5,
				   inseam: 34)

#7 APC Rescue
	#size 28
		Item.create!(garment_id: 7,
					tag_size: 28,
				   waist: 29,
				   front_rise: 10,
				   thigh: 11,
				   knee: 8,
				   leg_opening: 8,
				   inseam: 33.5)

	#size 29
		Item.create!(garment_id: 7,
					 tag_size: 29,
				   waist: 30,
				   front_rise: 10,
				   thigh: 11.5,
				   knee: 8,
				   leg_opening: 8,
				   inseam: 33.5)

	#size 30
		Item.create!(garment_id: 7,
					tag_size: 30,
				   waist: 31,
				   front_rise: 10,
				   thigh: 11.5,
				   knee: 8.5,
				   leg_opening: 8.5,
				   inseam: 34)

	#size 31
		Item.create!(garment_id: 7,
					tag_size: 31,
				   waist: 32,
				   front_rise: 10.5,
				   thigh: 12,
				   knee: 8.5,
				   leg_opening: 8.5,
				   inseam: 34)

	#size 32
		Item.create!(garment_id: 7,
					tag_size: 32,
				   waist: 33,
				   front_rise: 10.5,
				   thigh: 12,
				   knee: 9,
				   leg_opening: 9,
				   inseam: 34)

	#size 33
		Item.create!(garment_id: 7,
					tag_size: 33,
				   waist: 34,
				   front_rise: 10.5,
				   thigh: 12,
				   knee: 9,
				   leg_opening: 9,
				   inseam: 34)

	#size 34
		Item.create!(garment_id: 7,
					tag_size: 34,
				   waist: 35,
				   front_rise: 11,
				   thigh: 12.5,
				   knee: 9.5,
				   leg_opening: 9.5,
				   inseam: 34.5)

	#size 35
		Item.create!(garment_id: 7,
					tag_size: 35,
				   waist: 36,
				   front_rise: 11,
				   thigh: 13,
				   knee: 9.5,
				   leg_opening: 9.5,
				   inseam: 35)
	
	#size 36
		Item.create!(garment_id: 7,
					tag_size: 36,
				   waist: 37,
				   front_rise: 11,
				   thigh: 13,
				   knee: 10,
				   leg_opening: 10,
				   inseam: 35)

#8 APC Petit New Standard
	#size 25
		Item.create!(garment_id: 8,
					tag_size: 25,
				   waist: 26,
				   front_rise: 9.25,
				   thigh: 9.5,
				   knee: 6.75,
				   leg_opening: 6.25,
				   inseam: 32.5)

	#size 26
		Item.create!(garment_id: 8,
					tag_size: 26,
				   waist: 27,
				   front_rise: 9.5,
				   thigh: 10,
				   knee: 7,
				   leg_opening: 6.5,
				   inseam: 32.5)

	#size 27
		Item.create!(garment_id: 8,
					tag_size: 27,
				   waist: 28,
				   front_rise: 9.5,
				   thigh: 10.25,
				   knee: 7,
				   leg_opening: 6.5,
				   inseam: 32.5)

	#size 28
		Item.create!(garment_id: 8,
					tag_size: 28,
				   waist: 29,
				   front_rise: 9.75,
				   thigh: 10.75,
				   knee: 7.5,
				   leg_opening: 6.5,
				   inseam: 32.5)

	#size 29
		Item.create!(garment_id: 8,
					tag_size: 29,
				   waist: 30,
				   front_rise: 9.75,
				   thigh: 11,
				   knee: 7.5,
				   leg_opening: 6.5,
				   inseam: 32.5)

	#size 30
		Item.create!(garment_id: 8,
					tag_size: 30,
				   waist: 31,
				   front_rise: 10,
				   thigh: 11,
				   knee: 7.75,
				   leg_opening: 6.75,
				   inseam: 33.5)

	#size 31
		Item.create!(garment_id: 8,
					tag_size: 31,
				   waist: 32,
				   front_rise: 10,
				   thigh: 11.25,
				   knee: 8,
				   leg_opening: 6.75,
				   inseam: 33.5)

	#size 32
		Item.create!(garment_id: 8,
					tag_size: 32,
				   waist: 33,
				   front_rise: 10,
				   thigh: 11.5,
				   knee: 8.25,
				   leg_opening: 7,
				   inseam: 33.5)

	#size 33
		Item.create!(garment_id: 8,
					tag_size: 33,
				   waist: 34,
				   front_rise: 10,
				   thigh: 11.75,
				   knee: 8.5,
				   leg_opening: 7.5,
				   inseam: 33.5)

	#size 34
		Item.create!(garment_id: 8,
					tag_size: 34,
				   waist: 35,
				   front_rise: 10.25,
				   thigh: 12.25,
				   knee: 8.75,
				   leg_opening: 7.5,
				   inseam: 33.5)

#9 APC New Cure
	#size 25
		Item.create!(garment_id: 9,
					tag_size: 25,
				   waist: 26,
				   front_rise: 8.5,
				   thigh: 9.5,
				   knee: 6.5,
				   leg_opening: 6.5,
				   inseam: 33.5)

	#size 26
		Item.create!(garment_id: 9,
					tag_size: 26,
				   waist: 27,
				   front_rise: 9,
				   thigh: 9.5,
				   knee: 6.5,
				   leg_opening: 6.5,
				   inseam: 33.5)

	#size 27
		Item.create!(garment_id: 9,
					tag_size: 27,
				   waist: 28,
				   front_rise: 9,
				   thigh: 10,
				   knee: 6.5,
				   leg_opening: 6.5,
				   inseam: 33.5)

	#size 28
		Item.create!(garment_id: 9,
					tag_size: 28,
				   waist: 29,
				   front_rise: 9.5,
				   thigh: 10.5,
				   knee: 7,
				   leg_opening: 7,
				   inseam: 33.5)

	#size 29
		Item.create!(garment_id: 9,
					tag_size: 29,
				   waist: 30,
				   front_rise: 9.5,
				   thigh: 10.5,
				   knee: 7,
				   leg_opening: 7,
				   inseam: 33.5)

	#size 30
		Item.create!(garment_id: 9,
					tag_size: 30,
				   waist: 31,
				   front_rise: 9.5,
				   thigh: 10.5,
				   knee: 7.5,
				   leg_opening: 7.5,
				   inseam: 34)

	#size 31
		Item.create!(garment_id: 9,
					tag_size: 31,
				   waist: 32,
				   front_rise: 9.5,
				   thigh: 11,
				   knee: 7.5,
				   leg_opening: 7.5,
				   inseam: 35)

	#size 32
		Item.create!(garment_id: 9,
					tag_size: 32,
				   waist: 33,
				   front_rise: 10,
				   thigh: 11,
				   knee: 8,
				   leg_opening: 8,
				   inseam: 35.5)

	#size 33
		Item.create!(garment_id: 9,
					tag_size: 33,
				   waist: 34,
				   front_rise: 10,
				   thigh: 11.5,
				   knee: 8,
				   leg_opening: 8,
				   inseam: 36)

#10 Unbranded 101
	#size 29
		Item.create!(garment_id: 10,
					tag_size: 29,
				   waist: 29.5,
				   front_rise: 9.1,
				   thigh: 10.5,
				   knee: 7.5,
				   leg_opening: 7,
				   inseam: 36.5)

	#size 30
		Item.create!(garment_id: 10,
					tag_size: 30,
				   waist: 30.5,
				   front_rise: 9.3,
				   thigh: 10.75,
				   knee: 7.75,
				   leg_opening: 7.1,
				   inseam: 36.5)

	#size 31
		Item.create!(garment_id: 10,
					tag_size: 31,
				   waist: 31.5,
				   front_rise: 9.4,
				   thigh: 11,
				   knee: 8,
				   leg_opening: 7.25,
				   inseam: 36.5)

	#size 32
		Item.create!(garment_id: 10,
					tag_size: 32,
				   waist: 32.5,
				   front_rise: 9.5,
				   thigh: 11,
				   knee: 8.25,
				   leg_opening: 7.25,
				   inseam: 36.5)

	#size 33
		Item.create!(garment_id: 10,
					tag_size: 33,
				   waist: 33.5,
				   front_rise: 9.75,
				   thigh: 11.3,
				   knee: 8.5,
				   leg_opening: 7.25,
				   inseam: 36.5)

	#size 34
		Item.create!(garment_id: 10,
					tag_size: 34,
				   waist: 34.5,
				   front_rise: 9.8,
				   thigh: 11.5,
				   knee: 8.5,
				   leg_opening: 7.5,
				   inseam: 36.5)

	#size 36
		Item.create!(garment_id: 10,
					tag_size: 36,
				   waist: 36,
				   front_rise: 10,
				   thigh: 12,
				   knee: 9,
				   leg_opening: 8,
				   inseam: 36.5)

#11 Unbranded 201

	#size 28
		Item.create!(garment_id: 11,
					tag_size: 28,
				   waist: 28.25,
				   front_rise: 9.5,
				   thigh: 10.5,
				   knee: 7.5,
				   leg_opening: 7,
				   inseam: 34.5)

	#size 29
		Item.create!(garment_id: 11,
					tag_size: 29,
				   waist: 29.75,
				   front_rise: 9.9,
				   thigh: 10.8,
				   knee: 7.75,
				   leg_opening: 7,
				   inseam: 34.5)

	#size 30
		Item.create!(garment_id: 11,
					tag_size: 30,
				   waist: 30.75,
				   front_rise: 10,
				   thigh: 11,
				   knee: 7.9,
				   leg_opening: 7.25,
				   inseam: 34.5)

	#size 31
		Item.create!(garment_id: 11,
					tag_size: 31,
				   waist: 31.75,
				   front_rise: 10.2,
				   thigh: 11.5,
				   knee: 8.25,
				   leg_opening: 7.4,
				   inseam: 34.5)

	#size 32
		Item.create!(garment_id: 11,
					tag_size: 32,
				   waist: 32.75,
				   front_rise: 10.25,
				   thigh: 11.8,
				   knee: 8.4,
				   leg_opening: 7.6,
				   inseam: 34.5)

	#size 33
		Item.create!(garment_id: 11,
					tag_size: 33,
				   waist: 33.75,
				   front_rise: 10.4,
				   thigh: 12,
				   knee: 8.5,
				   leg_opening: 7.7,
				   inseam: 34.5)

	#size 34
		Item.create!(garment_id: 11,
					tag_size: 34,
				   waist: 34.75,
				   front_rise: 10.5,
				   thigh: 12.5,
				   knee: 8.75,
				   leg_opening: 7.8,
				   inseam: 34.5	)

	#size 36
		Item.create!(garment_id: 11,
					tag_size: 36,
				   waist: 35.75,
				   front_rise: 10.5,
				   thigh: 12.75,
				   knee: 9.25,
				   leg_opening: 7.9,
				   inseam: 34.5)

#12 Unbranded 301
	#size 30
		Item.create!(garment_id: 12,
					tag_size: 30,
				   waist: 31,
				   front_rise: 10,
				   thigh: 11.5,
				   knee: 8.3,
				   leg_opening: 8.2,
				   inseam: 34)

	#size 31
		Item.create!(garment_id: 12,
					tag_size: 31,
				   waist: 32,
				   front_rise: 10,
				   thigh: 11.5,
				   knee: 8.4,
				   leg_opening: 8.4,
				   inseam: 34)

	#size 32
		Item.create!(garment_id: 12,
					tag_size: 32,
				   waist: 33,
				   front_rise: 10.25,
				   thigh: 11.75,
				   knee: 8.65,
				   leg_opening: 8.6,
				   inseam: 34)

	#size 34
		Item.create!(garment_id: 12,
					tag_size: 34,
				   waist: 35,
				   front_rise: 10.25,
				   thigh: 11.75,
				   knee: 8.9,
				   leg_opening: 8.8,
				   inseam: 34)

#13 Unbranded 121
	#size 28
		Item.create!(garment_id: 13,
					tag_size: 28,
					waist: 29.5,
					front_rise: 9,
					thigh: 10,
					knee: 7.3,
					leg_opening: 6.65,
					inseam: 36.5)

	#size 29
		Item.create!(garment_id: 13,
					tag_size: 29,
					waist: 30.5,
					front_rise: 9,
					thigh: 10.25,
					knee: 7.7,
					leg_opening: 6.75,
					inseam: 36.5)

	#size 30
		Item.create!(garment_id: 13,
					tag_size: 30,
					waist: 31.5,
					front_rise: 9.25,
					thigh: 10.5,
					knee: 7.85,
					leg_opening: 7,
					inseam: 36.5)

	#size 31
		Item.create!(garment_id: 13,
					tag_size: 31,
					waist: 32.5,
					front_rise: 9.3,
					thigh: 10.75,
					knee: 8,
					leg_opening: 7,
					inseam: 36.5)

	#size 32
		Item.create!(garment_id: 13,
					tag_size: 32,
					waist: 33.5,
					front_rise: 9.4,
					thigh: 11,
					knee: 8.25,
					leg_opening: 7.25,
					inseam: 36.5)

	#size 33
		Item.create!(garment_id: 13,
					tag_size: 33,
					waist: 34.5,
					front_rise: 9.65,
					thigh: 11.25,
					knee: 8.45,
					leg_opening: 7.35,
					inseam: 36.5)

	#size 34
		Item.create!(garment_id: 13,
					tag_size: 34,
					waist: 35.5,
					front_rise: 9.75,
					thigh: 11.5,
					knee: 8.6,
					leg_opening: 7.5,
					inseam: 36.5)

	#size 36
		Item.create!(garment_id: 13,
					tag_size: 36,
					waist: 37.5,
					front_rise: 10,
					thigh: 12,
					knee: 9,
					leg_opening: 7.75,
					inseam: 36.5)

	#size 38
		Item.create!(garment_id: 13,
					tag_size: 38,
					waist: 39.5,
					front_rise: 10.25,
					thigh: 12.5,
					knee: 9.25,
					leg_opening: 8,
					inseam: 36.5)

#14 Unbranded 221
	#size 28
		Item.create!(garment_id: 14,
					tag_size: 28,
					waist: 29.5,
					front_rise: 9.4,
					thigh: 10.75,
					knee: 7.25,
					leg_opening: 6.75,
					inseam: 34)

	#size 29
		Item.create!(garment_id: 14,
					tag_size: 29,
					waist: 30.5,
					front_rise: 9.65,
					thigh: 10.75,
					knee: 7.5,
					leg_opening: 7,
					inseam: 34)

	#size 30
		Item.create!(garment_id: 14,
					tag_size: 30,
					waist: 32,
					front_rise: 9.7,
					thigh: 11.25,
					knee: 7.65,
					leg_opening: 7.25,
					inseam: 34)

	#size 31
		Item.create!(garment_id: 14,
					tag_size: 31,
					waist: 32.5,
					front_rise: 10.85,
					thigh: 11.5,
					knee: 7.9,
					leg_opening: 7.5,
					inseam: 34)

	#size 32
		Item.create!(garment_id: 14,
					tag_size: 32,
					waist: 33.5,
					front_rise: 10,
					thigh: 11.65,
					knee: 8.15,
					leg_opening: 7.65,
					inseam: 34)

	#size 33
		Item.create!(garment_id: 14,
					tag_size: 33,
					waist: 34,
					front_rise: 10.15,
					thigh: 12,
					knee: 8.45,
					leg_opening: 7.85,
					inseam: 34)

	#size 34
		Item.create!(garment_id: 14,
					tag_size: 34,
					waist: 35.5,
					front_rise: 10.35,
					thigh: 12.25,
					knee: 8.55,
					leg_opening: 8,
					inseam: 34)

	#size 36
		Item.create!(garment_id: 14,
					tag_size: 36,
					waist: 37.25,
					front_rise: 10.35,
					thigh: 12.75,
					knee: 9,
					leg_opening: 8.3,
					inseam: 34.5)

	#size 38
		Item.create!(garment_id: 14,
					tag_size: 38,
					waist: 39.5,
					front_rise: 10.65,
					thigh: 13.25,
					knee: 9.45,
					leg_opening: 8.75,
					inseam: 34.5)

#15 Unbranded 321
	#size 28
		Item.create!(garment_id: 15,
					tag_size: 28,
					waist: 29,
					front_rise: 10,
					thigh: 11,
					knee: 8,
					leg_opening: 8,
					inseam: 34.5)

	#size 29
		Item.create!(garment_id: 15,
					tag_size: 29,
					waist: 30,
					front_rise: 10.25,
					thigh: 11,
					knee: 8.2,
					leg_opening: 8.2,
					inseam: 34.5)

	#size 30
		Item.create!(garment_id: 15,
					tag_size: 30,
					waist: 31,
					front_rise: 10.25,
					thigh: 11.25,
					knee: 8.4,
					leg_opening: 8.4,
					inseam: 34.5)

	#size 31
		Item.create!(garment_id: 15,
					tag_size: 31,
					waist: 32,
					front_rise: 10.5,
					thigh: 11.5,
					knee: 8.5,
					leg_opening: 8.5,
					inseam: 34.5)

	#size 32
		Item.create!(garment_id: 15,
					tag_size: 32,
					waist: 33,
					front_rise: 10.5,
					thigh: 11.75,
					knee: 8.6,
					leg_opening: 8.6,
					inseam: 34.5)

	#size 33
		Item.create!(garment_id: 15,
					tag_size: 33,
					waist: 34,
					front_rise: 10.5,
					thigh: 12,
					knee: 8.8,
					leg_opening: 8.8,
					inseam: 34.5)

	#size 34
		Item.create!(garment_id: 15,
					tag_size: 34,
					waist: 35,
					front_rise: 10.5,
					thigh: 12.25,
					knee: 9,
					leg_opening: 9,
					inseam: 34.5)

	#size 36
		Item.create!(garment_id: 15,
					tag_size: 36,
					waist: 37,
					front_rise: 10.75,
					thigh: 12.75,
					knee: 9.5,
					leg_opening: 9.5,
					inseam: 34.5)

	#size 38
		Item.create!(garment_id: 15,
					tag_size: 38,
					waist: 39,
					front_rise: 11.25,
					thigh: 13.25,
					knee: 9.75,
					leg_opening: 9.75,
					inseam: 34.5)

#16 Baldwin Henley
	#size 28
		Item.create!(garment_id: 16,
					tag_size: 28,
					waist: 30.5,
					front_rise: 9,
					thigh: 10.75,
					knee: 7.4,
					leg_opening: 6.8,
					inseam: 35)

	#size 29
		Item.create!(garment_id: 16,
					tag_size: 29,
					waist: 31.5,
					front_rise: 9.25,
					thigh: 11,
					knee: 7.6,
					leg_opening: 7,
					inseam: 35)

	#size 30
		Item.create!(garment_id: 16,
					tag_size: 30,
					waist: 33,
					front_rise: 9.75,
					thigh: 11.25,
					knee: 7.8,
					leg_opening: 7.2,
					inseam: 36)

	#size 31
		Item.create!(garment_id: 16,
					tag_size: 31,
					waist: 34,
					front_rise: 10,
					thigh: 11.5,
					knee: 7.9,
					leg_opening: 7.4,
					inseam: 36)

	#size 32
		Item.create!(garment_id: 16,
					tag_size: 32,
					waist: 35,
					front_rise: 10.25,
					thigh: 11.75,
					knee: 8.1,
					leg_opening: 7.6,
					inseam: 36)

	#size 33
		Item.create!(garment_id: 16,
					tag_size: 33,
					waist: 36,
					front_rise: 10.25,
					thigh: 12.25,
					knee: 8.3,
					leg_opening: 7.8,
					inseam: 36)

	#size 34
		Item.create!(garment_id: 16,
					tag_size: 34,
					waist: 37,
					front_rise: 10.5,
					thigh: 12.25,
					knee: 8.5,
					leg_opening: 8.1,
					inseam: 36)

	#size 36
		Item.create!(garment_id: 16,
					tag_size: 36,
					waist: 38.5,
					front_rise: 11,
					thigh: 13,
					knee: 8.8,
					leg_opening: 8.35,
					inseam: 36)

#17 Baldwin Reed
	#size 28
		Item.create!(garment_id: 17,
					tag_size: 28,
					waist: 30.5,
					front_rise: 8.5,
					thigh: 11,
					knee: 7.65,
					leg_opening: 7.1,
					inseam: 36)

	#size 29
		Item.create!(garment_id: 17,
					tag_size: 29,
					waist: 31.5,
					front_rise: 9,
					thigh: 11.25,
					knee: 7.9,
					leg_opening: 7.4,
					inseam: 36)

	#size 30
		Item.create!(garment_id: 17,
					tag_size: 30,
					waist: 33,
					front_rise: 9.25,
					thigh: 11.5,
					knee: 8.25,
					leg_opening: 7.7,
					inseam: 36)

	#size 31
		Item.create!(garment_id: 17,
					tag_size: 31,
					waist: 34.5,
					front_rise: 9.75,
					thigh: 11.75,
					knee: 8.5,
					leg_opening: 8,
					inseam: 36.5)

	#size 32
		Item.create!(garment_id: 17,
					tag_size: 32,
					waist: 35.5,
					front_rise: 10,
					thigh: 12,
					knee: 8.9,
					leg_opening: 8.35,
					inseam: 36.5)

	#size 33
		Item.create!(garment_id: 17,
					tag_size: 33,
					waist: 36.5,
					front_rise: 10.25,
					thigh: 12.25,
					knee: 9.15,
					leg_opening: 9,
					inseam: 36.5)

	#size 34
		Item.create!(garment_id: 17,
					tag_size: 34,
					waist: 37.5,
					front_rise: 10.5,
					thigh: 12.5,
					knee: 9.4,
					leg_opening: 9,
					inseam: 36.5)

	#size 36
		Item.create!(garment_id: 17,
					tag_size: 36,
					waist: 38.5,
					front_rise: 11.25,
					thigh: 13,
					knee: 9.7,
					leg_opening: 9.3,
					inseam: 36.5)

#18 Baldwin Samuel
	#size 28
		Item.create!(garment_id: 18,
					tag_size: 28,
					waist: 29.5,
					front_rise: 9,
					thigh: 10,
					knee: 7.75,
					leg_opening: 7.5,
					inseam: 33)

	#size 29
		Item.create!(garment_id: 18,
					tag_size: 29,
					waist: 30.5,
					front_rise: 9,
					thigh: 10.5,
					knee: 8,
					leg_opening: 7.75,
					inseam: 33)

	#size 30
		Item.create!(garment_id: 18,
					tag_size: 30,
					waist: 32,
					front_rise: 9.25,
					thigh: 10.75,
					knee: 8.25,
					leg_opening: 8,
					inseam: 33.5)

	#size 31
		Item.create!(garment_id: 18,
					tag_size: 31,
					waist: 33,
					front_rise: 9.5,
					thigh: 11,
					knee: 8.25,
					leg_opening: 8,
					inseam: 35.5)

	#size 32
		Item.create!(garment_id: 18,
					tag_size: 32,
					waist: 34,
					front_rise: 9.75,
					thigh: 11.4,
					knee: 8.4,
					leg_opening: 8,
					inseam: 34)

	#size 33
		Item.create!(garment_id: 18,
					tag_size: 33,
					waist: 34.5,
					front_rise: 10,
					thigh: 11.75,
					knee: 8.7,
					leg_opening: 8.1,
					inseam: 34)

	#size 34
		Item.create!(garment_id: 18,
					tag_size: 34,
					waist: 35.5,
					front_rise: 10.25,
					thigh: 12,
					knee: 8.9,
					leg_opening: 8.35,
					inseam: 34)

	#size 36
		Item.create!(garment_id: 18,
					tag_size: 36,
					waist: 37,
					front_rise: 10.75,
					thigh: 12.5,
					knee: 9.5,
					leg_opening: 8.5,
					inseam: 34)

#19 N&F Super Skinny Okayama Spirit
	#size 28
		Item.create!(garment_id: 19,
					tag_size: 28,
					waist: 27.5,
					front_rise: 8.75,
					thigh: 9.25,
					knee: 7,
					leg_opening: 6,
					inseam: 33)

	#size 29
		Item.create!(garment_id: 19,
					tag_size: 29,
					waist: 28.5,
					front_rise: 8.75,
					thigh: 9.5,
					knee: 7.25,
					leg_opening: 6.25,
					inseam: 33)

	#size 30
		Item.create!(garment_id: 19,
					tag_size: 30,
					waist: 29.5,
					front_rise: 8.85,
					thigh: 9.75,
					knee: 7.5,
					leg_opening: 6.4,
					inseam: 33)

	#size 31
		Item.create!(garment_id: 19,
					tag_size: 31,
					waist: 30.5,
					front_rise: 9.15,
					thigh: 10,
					knee: 7.65,
					leg_opening: 6.5,
					inseam: 33)

	#size 32
		Item.create!(garment_id: 19,
					tag_size: 32,
					waist: 31.5,
					front_rise: 9.25,
					thigh: 10.25,
					knee: 7.75,
					leg_opening: 6.75,
					inseam: 33)

	#size 33
		Item.create!(garment_id: 19,
					tag_size: 33,
					waist: 32.5,
					front_rise: 9.25,
					thigh: 10.5,
					knee: 8.1,
					leg_opening: 6.85,
					inseam: 33)

	#size 34
		Item.create!(garment_id: 19,
					tag_size: 34,
					waist: 33.5,
					front_rise: 9.5,
					thigh: 10.75,
					knee: 8.2,
					leg_opening: 7,
					inseam: 33)

#20 PBJ xx-014
	#size 26
		Item.create!(garment_id: 20,
					tag_size: 26,
					waist: 28,
					front_rise: 9.5,
					thigh: 10.25,
					knee: 6.5,
					leg_opening: 6,
					inseam: 37.5)

	#size 27
		Item.create!(garment_id: 20,
					tag_size: 27,
					waist: 29,
					front_rise: 9.5,
					thigh: 10.5,
					knee: 6.75,
					leg_opening: 6.25,
					inseam: 37.5)

	#size 28
		Item.create!(garment_id: 20,
					tag_size: 28,
					waist: 30,
					front_rise: 9.75,
					thigh: 10.75,
					knee: 7,
					leg_opening: 6.5,
					inseam: 37.5)

	#size 29
		Item.create!(garment_id: 20,
					tag_size: 29,
					waist: 31,
					front_rise: 10,
					thigh: 11,
					knee: 7.25,
					leg_opening: 6.75,
					inseam: 37.5)

	#size 30
		Item.create!(garment_id: 20,
					tag_size: 30,
					waist: 32,
					front_rise: 10.25,
					thigh: 11.5,
					knee: 7.5,
					leg_opening: 7,
					inseam: 37.5)

	#size 31
		Item.create!(garment_id: 20,
					tag_size: 31,
					waist: 33,
					front_rise: 10.25,
					thigh: 11.75,
					knee: 7.75,
					leg_opening: 7.5,
					inseam: 37.5)

	#size 32
		Item.create!(garment_id: 20,
					tag_size: 32,
					waist: 34,
					front_rise: 10.5,
					thigh: 12,
					knee: 8,
					leg_opening: 7.5,
					inseam: 37.5)

	#size 33
		Item.create!(garment_id: 20,
					tag_size: 33,
					waist: 35,
					front_rise: 10.75,
					thigh: 12.25,
					knee: 8.25,
					leg_opening: 7.75,
					inseam: 37.5)

	#size 34
		Item.create!(garment_id: 20,
					tag_size: 34,
					waist: 36.5,
					front_rise: 11,
					thigh: 12.5,
					knee: 8.25,
					leg_opening: 8,
					inseam: 37.5)

	#size 36
		Item.create!(garment_id: 20,
					tag_size: 36,
					waist: 38,
					front_rise: 11.25,
					thigh: 13.25,
					knee: 8.75,
					leg_opening: 8.5,
					inseam: 37.5)

	#size 38
		Item.create!(garment_id: 20,
					tag_size: 38,
					waist: 40,
					front_rise: 11.75,
					thigh: 14,
					knee: 9.5,
					leg_opening: 9,
					inseam: 37.5)

end

	# #size 25
	# 	Item.create!(garment_id: ,
	# 				)

	# #size 26
	# 	Item.create!(garment_id: ,
	# 				)

	# #size 27
	# 	Item.create!(garment_id: ,
	# 				)

	# #size 28
	# 	Item.create!(garment_id: ,
	# 				)

	# #size 29
	# 	Item.create!(garment_id: ,
	# 				)

	# #size 30
	# 	Item.create!(garment_id: ,
	# 				)

	# #size 31
	# 	Item.create!(garment_id: ,
	# 				)

	# #size 32
	# 	Item.create!(garment_id: ,
	# 				)

	# #size 33
	# 	Item.create!(garment_id: ,
	# 				)

	# #size 34
	# 	Item.create!(garment_id: ,
	# 				)

	# #size 36
	# 	Item.create!(garment_id: ,
	# 				)

	# #size 38
	# 	Item.create!(garment_id: ,
	# 				)

	# #size 40
	# 	Item.create!(garment_id: ,
	# 				)


