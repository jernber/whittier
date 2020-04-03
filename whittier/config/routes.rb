Rails.application.routes.draw do
  get 'clothings/index'
  get 'clothings/show'
  get 'clothings/edit'
  get 'about/index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
