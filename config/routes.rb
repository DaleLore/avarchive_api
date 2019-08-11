Rails.application.routes.draw do
  resources :items
  resources :collections
  resources :users

  post '/login', to: 'auth#create'
  post '/signup', to: 'users#create'
  get '/profile', to: 'users#profile'


end
