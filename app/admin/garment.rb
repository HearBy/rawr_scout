ActiveAdmin.register Garment do
  menu priority: 1

  filter :items_exist, :as => :select, collection: [['Yes', 'yes'], ['No', 'no']]
  filter :brand, :as => :select
  filter :name, :as => :select
  filter :fabric_origin, :as => :select
  filter :price, :as => :numeric
  filter :denim_weight, :as => :numeric
  filter :color, :as => :check_boxes, collection: Garment.all.map(&:color).uniq
  filter :fit, :as => :check_boxes, collection: Garment.all.map(&:fit).uniq
  
  index do
    selectable_column
    column :name, :sortable => :name do |garment|
      link_to garment.name, [:admin, garment]
    end
    column :brand
    column "Tag Sizes" do |garment|
      if garment.items != []
        raw(garment.items.map {|i| link_to(i.tag_size, [:admin, i])}.join(', '))
      else
        h4("NONE", :class => "no_items")
      end
    end
    column :fabric_origin
    column :made_in
    column :price, :sortable => :price do |garment|
      div :class => "price" do
        number_to_currency garment.price
      end
    end
    column "Weight", :denim_weight
    column :fit
    column "link" do |garment|
      link_to truncate(garment.url[7..(garment.url.length)], length:20), garment.url, :target => "_blank"
    end
    default_actions
  end

  show do
    render "admin_garment", garment: garment

    attributes_table do
      row :fabric_origin
      row :made_in
      row :denim_weight
      row :color
      row :sanforized
      row :stretch
      row :selvedge
      row :id
      row :created_at
      row :updated_at
    end
    active_admin_comments
  end
end
