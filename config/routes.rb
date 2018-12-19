Rails.application.routes.draw do

  devise_for :users, controllers: {
    omniauth_callbacks: "users/omniauth_callbacks"
  }

  root 'items#index'

  resources :users, only: [:index, :new, :show, :destroy]do
    collection do
      get 'new1','new2','new3','new4','create_finish','user_confilm','user_profile', 'credit'
    end
  end

  resources :items do
    collection do
      get ':id/seller' => 'items#seller'
      post 'purchased/:id' => 'items#purchased'
      get  'sell_item'
    end
  end

end
