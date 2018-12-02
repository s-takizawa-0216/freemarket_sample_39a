Rails.application.routes.draw do
  devise_for :users
  root 'mercaries#index'
  resources :mercaries
  resources :items
  resources :users
end
