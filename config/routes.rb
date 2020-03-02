Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/', to: 'application#homepage', as: 'homepage'
<<<<<<< HEAD
  resources :users, only: [:index, :show, :new, :create, :edit, :update]
  resources :talents, only: [:index, :show, :new, :create]
  resources :houses, only: [:index, :show, :new]
=======
  get '/analytics', to: 'application#analytics', as: 'analytics'
  resources :users
  resources :talents
  resources :houses, only: [:index, :show]
>>>>>>> 0d7cc027d41539fe0dc5133e327d03d39c63ae5c
end
