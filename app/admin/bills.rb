ActiveAdmin.register Bill do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :name, :service, :amount, :date, :status, :user_id, :slug
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :service, :amount, :date, :status, :user_id, :slug]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  controller do
         def find_resource
           scoped_collection.friendly.find(params[:id])
         end
       end
end
