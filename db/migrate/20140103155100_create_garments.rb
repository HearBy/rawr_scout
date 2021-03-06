class CreateGarments < ActiveRecord::Migration
  def change
    create_table :garments do |t|
      t.string :name
      t.string :brand
      t.string :fabric_origin
      t.string :made_in
      t.decimal :price
      t.decimal :denim_weight
      t.string :color
      t.string :fit
      t.boolean :sanforized
      t.boolean :stretch
      t.boolean :selvedge
      t.string :url
      t.text :photo_url

      t.timestamps
    end
  end
end
