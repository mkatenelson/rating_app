Rails.application.routes.draw do

  root to: "welcome#index"

  resources :users
  resources :places

  controller :sessions do
    get "/login", to: "sessions#new"
    post "/sessions", to: "sessions#create"
    get "/sign_up", to: "users#new", as: "sign_up"
    delete "/sessions", to: "sessions#destroy"
  end

  # handles all unknown requests and sends them home
  get "*path" => "welcome#index"

end
