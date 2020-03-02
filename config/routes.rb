Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/', to: 'application#homepage', as: 'homepage'
  get '/analytics', to: 'application#analytics', as: 'analytics'
  resources :users
  resources :talents
  resources :houses, only: [:index, :show]
end
