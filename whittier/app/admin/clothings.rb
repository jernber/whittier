# frozen_string_literal: true

ActiveAdmin.register Clothing do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :clothing_type, :size, :effects, :sale_type, :price, :type, :image

  form do |f|
    f.semantic_errors
    f.inputs do
      f.input :image, as: :file
    end
    f.actions
  end
  #
  # or
  #
  # permit_params do
  #   permitted = [:clothing_type, :size, :effects, :sale_type, :price, :type]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
end
