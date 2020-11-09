class LikedMoviesController < ApplicationController

    def index
        liked_movies = LikedMovie.all 
        render json: liked_movies
    end

    def new
        @liked_movie = LikedMovie.new 
    end

    def create
        @liked_movie = LikedMovie.create(liked_movies_params)
        render json: @liked_movie
    end


    private
    def liked_movies_params
        params.permit(:user_id, :movie_id)
    end

end
