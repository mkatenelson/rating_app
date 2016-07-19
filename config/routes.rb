Rails.application.routes.draw do

  devise_for :users
  
  resources :places do
    resources :reviews, except: [:show, :index]
  end

  root 'places#index'


end
