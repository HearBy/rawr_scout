class Item < ActiveRecord::Base
	attr_accessible :front_rise, :garment_id, :inseam, :knee, :leg_opening, :tag_size, :thigh, :waist
	
	belongs_to :garment
	belongs_to :admin_user

	validates :garment_id, presence: true

	validates_numericality_of :waist, 		greater_than_or_equal_to: 26, less_than_or_equal_to: 42
	validates_numericality_of :front_rise, 	greater_than_or_equal_to: 8, less_than_or_equal_to: 14
	validates_numericality_of :thigh, 		greater_than_or_equal_to: 9, less_than_or_equal_to: 15 
	validates_numericality_of :knee, 		greater_than_or_equal_to: 6, less_than_or_equal_to: 12
	validates_numericality_of :leg_opening, greater_than_or_equal_to: 5, less_than_or_equal_to: 12
	validates_numericality_of :inseam, 		greater_than_or_equal_to: 28, less_than_or_equal_to: 40
	validates_numericality_of :tag_size, 	greater_than_or_equal_to: 25, less_than_or_equal_to: 43

	def self.garment_search(column, search)
		if search && column && !(Garment.all.map{|i| i.send("#{column}").to_s}.uniq & search).empty?
			joins(:garment).where("garments.#{column}" => search)
		else
			scoped
		end
	end

	def self.boolean_search(column, search)
		case search
	    when "true"
	      joins(:garment).where("#{column} = ?", true)
	    when "false"
	      joins(:garment).where("#{column} = ?", false)
	    else
	      scoped
	    end
	end



	def self.true_waist_search(waist_size)
		if waist_size
			where('waist <= ?', (waist_size.to_d + 0.5))
			.where('waist >= ?', (waist_size.to_d - 0.5))
		else
			scoped
		end
	end

	def self.price_search(min, max)
		if min && max 
			joins(:garment).where('garments.price >= ?', min).where('garments.price <= ?', max)
		else
			scoped 
		end
	end

	def self.weight_search(min, max)
		if min && max 
			joins(:garment).where('garments.denim_weight >= ?', min).where('garments.denim_weight <= ?', max)
		else
			scoped 
		end
	end

	def self.front_rise_search(front_rise_size)
		if front_rise_size
			where('front_rise <= ?', (front_rise_size.to_d + 0.25))
			.where('front_rise >= ?', (front_rise_size.to_d - 0.25))
		else
			scoped
		end
	end

	def self.thigh_search(thigh_size)
		if thigh_size
			where('thigh <= ?', (thigh_size.to_d + 0.25))
			.where('thigh >= ?', (thigh_size.to_d - 0.25))
		else
			scoped
		end
	end

	def self.knee_search(knee_size)
		if knee_size
			where('knee <= ?', (knee_size.to_d + 0.25))
			.where('knee >= ?', (knee_size.to_d - 0.25))
		else
			scoped
		end
	end

	def self.leg_opening_search(leg_opening_size)
		if leg_opening_size
			where('leg_opening <= ?', (leg_opening_size.to_d + 0.25))
			.where('leg_opening >= ?', (leg_opening_size.to_d - 0.25))
		else
			scoped
		end
	end
end
