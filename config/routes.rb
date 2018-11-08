require 'sidekiq/web'
Rails.application.routes.draw do
<<<<<<< HEAD
  # resources :trainers, only: [:index, :show, :edit, :new, :stripeit ]
  # # get "stripeit" => "trainers/stripeit"
  
  # get '/stripeit/:id' => "trainers#stripeit"

  resources :trainers do 
    resources :charges
  end

=======
  
  resources :trainers do
    collection do
        get :terms
      end
  end
  resources :trainers
  get "stripeit" => "trainers#stripeit"
>>>>>>> 91660e4ce91857db3c7472cb8c17f9f28f2abece
  root 'pages#home'

  devise_for :users,
              path: "",
              path_names: {sign_in: 'login', sign_out: 'logout', edit: 'profile', sign_up: 'registration'},
              controllers: {omniauth_callbacks: 'omniauth_callbacks'}

  resources :pages, only: [:home, :index, :show]
  resources :coaches, only: [:index, :show]
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
