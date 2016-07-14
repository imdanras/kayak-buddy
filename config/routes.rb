Rails.application.routes.draw do

  get 'weather/index'

  root "users#index"

  resources :users

  resources :groups

  # get 'sessions/new', to: 'sessions#index'
  # post 'sessions/create', to: 'sessions#create'
  # delete 'sessions/destroy', to: 'sessions#destroy'

# renaming the urls to /login and /logout
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get 'weather', to: 'weather#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
