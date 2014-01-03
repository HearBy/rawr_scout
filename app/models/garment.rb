class Garment < ActiveRecord::Base
  attr_accessible :brand, :color, :denim_weight, :fabric_origin, :fit, :made_in, :name, :photo_url, :price, :sanforized, :selvedge, :stretch, :url
end
