require 'sidekiq/web'
Rails.application.routes.draw do
  # resources :trainers, only: [:index, :show, :edit, :new, :stripeit ]
  # # get "stripeit" => "trainers/stripeit"
  
  # get '/stripeit/:id' => "trainers#stripeit"

  # resources :trainers do 
  
  resources :lessons
  get 'seller' => "trainers#seller"
  get 'about' => "pages#about"
  
  resources :trainers do
    resources :charges
    collection do
      get :terms
    end
  end

  root 'pages#home'

  devise_for :users,
              path: "",
              path_names: {sign_in: 'login', sign_out: 'logout', edit: 'profile', sign_up: 'registration'},
              controllers: {omniauth_callbacks: 'omniauth_callbacks'}

  resources :pages, only: [:home, :index, :show]
  resources :coaches, only: [:index, :show]
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
