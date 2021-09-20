Rails.application.routes.draw do
  resources :root, only: [:index]
  resources :town, only: [:index]

  get    "/login",   to: "sessions#new"
  post   "/login",   to: "sessions#create"
  delete "/logout",  to: "sessions#destroy"

  root to: "root#index"
end
