Rails.application.routes.draw do
  resources :watched_movies
  resources :liked_movies
  resources :movies
  resources :users, only: [:create, :index]
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
end
