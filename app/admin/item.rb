ActiveAdmin.register Item do
  menu priority: 2
  
  form do |f|
    render :partial => "admin_item_form"
  end

  batch_action :toggle_approve do |selection|
    if current_active_admin_user.role == "admin"
      Item.find(selection).each do |item|
        item.toggle!(:approval)
      end
      redirect_to admin_items_path
    end
    if current_active_admin_user.role == "item_only"
      redirect_to admin_items_path, :alert => "You are unauthorized for this method"
    end
  end

  controller do
    def new
      session[:return_to] ||= request.referer
      new!
    end

    def create
      create! do |format|
        if @item.save
          if Garment.find(params[:item][:garment_id]).tag_size_empty.present?
            empty_sizes = Garment.find(params[:item][:garment_id]).tag_size_empty.gsub(' ', '').split(',')
            new_size = params[:item][:tag_size].gsub(' ', '').split(',')
            new_empty_sizes = (empty_sizes - new_size).join(', ')

            if new_empty_sizes == ""
              final = nil
            else
              final = new_empty_sizes
            end

            Garment.find(params[:item][:garment_id]).update_attributes(tag_size_empty: final)
          end

          format.html { redirect_to session.delete(:return_to) }
        end
      end
    end

    def edit
      session[:return_to] ||= request.referer
      edit!
    end

    def update
      update! do |format|
        format.html { redirect_to session.delete(:return_to) }
      end
    end

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
    if current_active_admin_user.role == "admin" 
      selectable_column
    end
    column "Brand", sortable: 'garments.brand' do |item|
      item.garment.brand
    end
    column :garment
    column :tag_size do |item|
      link_to item.tag_size, [:admin, item]
    end
    column :waist
    column :front_rise
    column :thigh
    column :knee
    column :leg_opening
    column :inseam
    column :approval
    column :admin_user
    default_actions
  end

  show do
    render "admin_item", item: item

    attributes_table do
      row :tag_size
      row :waist
      row :front_rise
      row :thigh
      row :knee
      row :leg_opening
      row :inseam
      row :admin_user
      row :approval
      row :id
      row :created_at
      row :updated_at
    end
    active_admin_comments
  end
end