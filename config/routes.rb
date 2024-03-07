require "sidekiq/web"

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords',
    omniauth_callbacks: 'users/omniauth_callbacks'
  }

  mount Sidekiq::Web => '/sidekiq'
  # Defines the root path route ("/")
  root "home#index"
  get 'cache/index'
  get 'search/search'
  get 'main/index'

  resources :posts
  resources :songs
  resources :articles
  resources :notifications

  namespace :api do 
    namespace :v1 do 
      resources :clients do 
        collection do 
          get "get_clients"
        end
      end
    end
  end
end
