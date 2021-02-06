class WatchedMoviesController < ApplicationController
    def index
        watched_movies = WatchedMovie.all 
        render json: watched_movies
    end

    def new
        @watched_movie = WatchedMovie.new 
    end

    def create
        @watched_movie = WatchedMovie.create(watched_movies_params)
        render json: @watched_movie
    end


    private
    def watched_movies_params
        params.permit(:user_id, :movie_id)
    end
end
