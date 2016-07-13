Rails.application.routes.draw do

  root "users#index"

  resources :users

  resources :groups

  get 'sessions/new', to: 'sessions#index'
  post 'sessions/create', to: 'sessions#create'
  delete 'sessions/destroy', to: 'sessions#destroy' 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
