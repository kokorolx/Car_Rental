# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :admin_site do
    resources :members
    resources :car_brands
  end

  resources :users
  resources :price_lists
  resources :passengers
  resources :customers
  resources :car_rental_contracts
  resources :investment_contracts
  resources :drivers
  resources :user_types
  resources :cars
  resources :car_models

  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'home#index'
end
