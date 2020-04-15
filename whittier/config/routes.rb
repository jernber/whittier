# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  # devise_for :users, controllers: { registrations: 'registrations' }
  # get 'carts/show'
  post 'clothings/add_to_cart/:id', to: 'clothings#add_to_cart', as: 'add_to_cart'
  delete 'clothings/remove_from_cart/:id', to: 'clothings#remove_from_cart', as: 'remove_from_cart'

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
  resources :clothing_orders
  resource :carts, only: [:show]
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
