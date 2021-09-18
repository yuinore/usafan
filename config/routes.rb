Rails.application.routes.draw do
  get 'root/index'
  resources :root, only: [:index]

  root to: 'root#index'
end
