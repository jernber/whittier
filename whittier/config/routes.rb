# frozen_string_literal: true

Rails.application.routes.draw do
  get 'searches/index'
  get 'contacts/index'
  get 'home/index'
  get 'home/edit'
  get 'clothings/index'
  get 'clothings/tops'
  get 'clothings/bottoms'
  get 'clothings/jackets'
  get 'clothings/footwear'
  get 'clothings/accessory'
  get 'clothings/show/:id', to: 'clothings#show', as: 'clothing'
  get 'about/index'
  root to: 'home#index'
  resources :searches
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
