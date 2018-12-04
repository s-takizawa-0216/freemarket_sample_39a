Rails.application.routes.draw do
  devise_for :users
  root 'mercaries#index'
  resources :mercaries
  resources :items
  resources :users do
    collection do
      get 'new1'
      get 'new2'
      get 'new3'
    end
  end
end
