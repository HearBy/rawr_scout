ActiveAdmin.register Item do
  menu priority: 2
  
  form do |f|
    f.inputs 'Garment' do
      f.input :garment
    end
    f.inputs 'Size Information' do
      f.input :tag_size
      f.input :waist
      f.input :front_rise
      f.input :thigh
      f.input :knee
      f.input :leg_opening
      f.input :inseam
      f.input :admin_user_id, :as => :hidden, :value => current_active_admin_user.id
    end
    f.actions
  end

  controller do
    def scoped_collection
      resource_class.includes(:garment) # prevents N+1 queries to your database
    end
  end
  
  filter :approval, :as => :select, collection: [true, false]
  filter :admin_user_email, :as => :select, collection: AdminUser.all.map(&:email).uniq.sort_by{|e| e}
  filter :garment
  filter :garment_brand, :as => :select, collection: Garment.all.map(&:brand).uniq.sort_by{|e| e}
  filter :tag_size

  index do
    selectable_column
    column "Brand", sortable: 'garments.brand' do |item|
      item.garment.brand
    end
    column :garment
    column :tag_size do |item|
      link_to item.tag_size, [:admin, item]
    end
    column "True Waist", :waist
    column :approval
    column :admin_user
    default_actions
  end

  show do |item|
    attributes_table do
      row :id
      row "Brand" do |item|
        item.garment.brand
      end
      row "Model" do |item|
        item.garment.name
      end
      row :tag_size
      row :waist
      row :front_rise
      row :thigh
      row :knee
      row :leg_opening
      row :inseam
      row :created_at
      row :updated_at
    end
    active_admin_comments
  end
end