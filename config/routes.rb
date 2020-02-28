Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/', to: 'application#homepage', as: 'homepage'
  resources :users, only: [:index, :show, :new, :create, :edit, :update]
  resources :talents, only: [:index, :show, :new, :create]
  resources :houses, only: [:index, :show, :new]
end
