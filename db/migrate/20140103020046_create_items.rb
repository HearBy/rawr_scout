class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :tag_size
      t.decimal :waist
      t.decimal :front_rise
      t.decimal :thigh
      t.decimal :knee
      t.decimal :leg_opening
      t.decimal :inseam
      t.integer :garment_id

      t.timestamps
    end
  end
end
