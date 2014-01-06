class AddTagSizeEmptyAndMeasurementsUrlToGarments < ActiveRecord::Migration
  def change
  	add_column :garments, :tag_size_empty, :string
  	add_column :garments, :measurements_url, :text
  end
end
