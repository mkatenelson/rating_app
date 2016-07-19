Rails.application.routes.draw do
  resources :reviews
  devise_for :users
  resources :places

  root 'places#index'

  
end
