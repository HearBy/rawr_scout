class AddPrecisionToDecimalValues < ActiveRecord::Migration
  def change
  	change_column :items, :waist, :decimal, :precision => 5, :scale => 3
  	change_column :items, :front_rise, :decimal, :precision => 5, :scale => 3
  	change_column :items, :thigh, :decimal, :precision => 5, :scale => 3
  	change_column :items, :knee, :decimal, :precision => 5, :scale => 3
  	change_column :items, :leg_opening, :decimal, :precision => 5, :scale => 3
  	change_column :items, :inseam, :decimal, :precision => 5, :scale => 1

  	change_column :garments, :denim_weight, :decimal, :precision => 5, :scale => 2
  end
end
