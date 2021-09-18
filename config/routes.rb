Rails.application.routes.draw do
  resources :root, only: [:index]
  resources :town, only: [:index]

  root to: 'root#index'
end
