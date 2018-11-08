require 'sidekiq/web'
Rails.application.routes.draw do
  
  resources :trainers do
    collection do
        get :terms
      end
  end
  resources :trainers
  root 'pages#home'

  devise_for :users,
              path: "",
              path_names: {sign_in: 'login', sign_out: 'logout', edit: 'profile', sign_up: 'registration'},
              controllers: {omniauth_callbacks: 'omniauth_callbacks'}

  resources :pages, only: [:home, :index, :show]
  resources :coaches, only: [:index, :show]
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
