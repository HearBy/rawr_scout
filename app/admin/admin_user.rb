ActiveAdmin.register AdminUser do     
  index do                            
    column :email
    column :role                     
    column :current_sign_in_at        
    column :last_sign_in_at           
    column :sign_in_count             
    default_actions                   
  end                                 

  filter :email                       

  form do |f|                         
    f.inputs "Admin Details" do       
      f.input :email                  
      f.input :password               
      f.input :password_confirmation
      f.input :role, :as => :radio, collection: ["admin", "item_only"]
    end                               
    f.actions                         
  end                                 
end                                   
