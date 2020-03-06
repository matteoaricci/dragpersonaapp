Rails.application.routes.draw do
  resources :messages
  get '/houses/:id/join', to: 'application#join', as: 'join'
  get 'sessions/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/home', to: 'application#homepage', as: 'homepage'
  get '/analytics', to: 'application#analytics', as: 'analytics'
  get '/', to: 'sessions#new', as: 'login'
  post '/', to: 'sessions#create'
  get '/logout', to: 'sessions#logout', as: 'logout'
  get '/logoutyes', to: 'sessions#logout_yes', as: 'logouts'
  get '/messages/:id/reject', to: 'application#reject', as: 'reject'
  get '/messages/:id/accept', to: 'application#accept', as: 'accept'
  resources :users
  resources :talents
  resources :houses
  resources :cities
end
