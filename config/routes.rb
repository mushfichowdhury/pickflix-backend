Rails.application.routes.draw do
  resources :genres
  resources :watched_movies
  resources :liked_movies
  resources :movies
  resources :users, only: [:create]
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
end
