Rails.application.routes.draw do

  devise_for :users, controllers: {
    omniauth_callbacks: "users/omniauth_callbacks"
  }

  root 'items#index'

  get 'users/new'
  get 'users/user_profile'
  get 'users/user_confilm'
  get 'users/credit'


  post 'items/purchased/:id' => 'items#purchased',as:'i_purchased_path'
  get  'items/purchased'
  get  'items/sell_item'

  resources :items
  get 'items/:id' => 'items#show'


  resources :users do
    collection do
      get 'new1'
      get 'new2'
      get 'new3'
      get 'new4'
      get 'create'
    end
  end

  get 'users/:id' => 'users#show'

  resources :items do
    collection do
      get ':id/seller' => 'items#seller'
    end
  end

end
