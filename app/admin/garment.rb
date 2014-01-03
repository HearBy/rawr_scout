ActiveAdmin.register Garment do
  menu priority: 1

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
      link_to garment.name, garment.url, :target => "_blank"
    end
    column :brand
    column :fabric_origin
    column :made_in
    column :price, :sortable => :price do |garment|
      div :class => "price" do
        number_to_currency garment.price
      end
    end
    column :denim_weight
    column :color
    column :fit
    default_actions
  end
end
