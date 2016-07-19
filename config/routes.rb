Rails.application.routes.draw do

  devise_for :users

  resources :places do
    collection do
      get 'search'
    end
    resources :reviews, except: [:show, :index]
  end

  root 'places#index'


end
