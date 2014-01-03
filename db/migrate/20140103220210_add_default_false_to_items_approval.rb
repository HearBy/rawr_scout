class AddDefaultFalseToItemsApproval < ActiveRecord::Migration
  def change
  	change_column :items, :approval, :boolean, :default => false
  end
end
