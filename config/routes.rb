Rails.application.routes.draw do
  devise_for :users
  root 'i#index'
end
