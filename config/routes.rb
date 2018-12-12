Rails.application.routes.draw do

  devise_for :users, controllers: {
    omniauth_callbacks: "users/omniauth_callbacks"
  }


  root 'items#index'

  get 'users/new'
  get 'users/user_profile'
  get 'users/user_confilm'
  get 'users/credit'
  get 'users/:id' => 'users#show'


  resources :items
  resources :users do
    collection do
      get 'new1'
      get 'new2'
    end
  end
  resources :users_details do
      get 'create'
    collection do
      get 'new3'
    end
  end
  resources :users_details do
    resources :credit_cards
  end
  resources :credit_cards do
    collection do
      get 'new4'
    end
  end
end
