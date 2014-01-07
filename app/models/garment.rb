class Garment < ActiveRecord::Base
	attr_accessible :brand, :color, :denim_weight, :fabric_origin, :fit, :made_in, :name, :photo_url, :price, :sanforized, :selvedge, :stretch, :url, :tag_size_empty, :measurements_url

	has_many :items, dependent: :destroy

	search_method :jeans_exist_eq
	search_method :to_be_populated_eq

	validates :name, presence: true
	validates :brand, presence: true
	validates :fabric_origin, presence: true
	validates :made_in, presence: true
	validates :price, presence: true
	validates :denim_weight, presence: true
	validates :color, presence: true
	validates :fit, presence: true, :inclusion => { :in => ["straight", "slim straight", "tapered", "slim tapered"] }
	validates :url, presence: true
	validates :photo_url, presence: true

	validates_numericality_of :price, greater_than_or_equal_to: 20, less_than_or_equal_to: 1000
	validates_numericality_of :denim_weight, greater_than_or_equal_to: 4, less_than_or_equal_to: 32

	private

	def self.jeans_exist_eq(query)
		if query == "yes"
			includes(:items).where('items.garment_id IS NOT NULL')
		elsif query == "no"
			includes(:items).where(:items => {:garment_id=>nil})
		else
			scoped
		end
	end

	def self.to_be_populated_eq(query)
		if query == "yes"
			where("tag_size_empty IS NOT NULL and tag_size_empty != '' ")
		elsif query == "no"
			where("tag_size_empty IS NULL or tag_size_empty = '' ")
		else
			scoped
		end
	end
end