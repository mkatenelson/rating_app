Rails.application.routes.draw do

  devise_for :users
  resources :users, only: [:show] do
    resources :reviews, only: [:show, :edit]
  end


  resources :places do
    collection do
      get 'search'
    end
    resources :reviews, except: [:index]
  end

  root 'home#index'


end
