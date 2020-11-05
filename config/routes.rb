Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :watched_movies
      resources :liked_movies
      resources :movies
      resources :users
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
    end
  end
end
