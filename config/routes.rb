Rails.application.routes.draw do
  devise_for :users
  resources :root, only: [:index]
  resources :town, only: [:index, :create]

  get    "/login",   to: "sessions#new"
  post   "/login",   to: "sessions#create"
  delete "/logout",  to: "sessions#destroy"

  root to: "root#index"
end
