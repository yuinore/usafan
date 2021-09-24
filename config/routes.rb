Rails.application.routes.draw do
  resources :root, only: [:index]
  resources :town, only: [:index, :create]
  resources :shop, only: [:index, :create]

  root to: "root#index"

  devise_for :users, controllers: {
    registrations: "users/registrations",
    sessions: "users/sessions",
    omniauth_callbacks: "users/omniauth_callbacks",
  }

  devise_scope :user do
    # get "user/:id", :to => "users/registrations#detail"
    # get "signup", :to => "users/registrations#new"
    # get "login", :to => "users/sessions#new"
    get "logout", to: "users/sessions#destroy"
  end
end
