Rails.application.routes.draw do
  root 'home#index'
  get "home/index"

  resources :compliments, only: [:index]

  devise_for :admin_users, ActiveAdmin::Devise.config

  ActiveAdmin.routes(self)
end
