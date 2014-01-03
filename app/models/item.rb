class Item < ActiveRecord::Base
  attr_accessible :front_rise, :garment_id, :inseam, :knee, :leg_opening, :tag_size, :thigh, :waist
end
