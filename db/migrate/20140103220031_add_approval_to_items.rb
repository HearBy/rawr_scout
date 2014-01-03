class AddApprovalToItems < ActiveRecord::Migration
  def change
  	add_column :items, :approval, :boolean
  end
end
