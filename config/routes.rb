Rails.application.routes.draw do
  get 'sessions/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/', to: 'application#homepage', as: 'homepage'
  get '/analytics', to: 'application#analytics', as: 'analytics'
  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#logout', as: 'logout'
  get '/logoutyes', to: 'sessions#logout_yes', as: 'logouts'
  resources :users
  resources :talents
  resources :houses
  resources :cities
end
