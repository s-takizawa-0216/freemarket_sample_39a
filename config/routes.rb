Rails.application.routes.draw do
  devise_for :users
  root 'mercaries#index'
  resources :mercaries
  resources :items
  resources :users do
    collection do
      get 'new1'
    end
  end
end
