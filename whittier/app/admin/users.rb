# frozen_string_literal: true

ActiveAdmin.register User do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :admin, :username, :phone_number, :email_address, :first_name, :last_name, :city, :country, :address, :postal_code
  #
  # or
  #
  # permit_params do
  #   permitted = [:admin, :username, :phone_number, :email_address, :first_name, :last_name, :city, :country, :address, :postal_code]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
end
