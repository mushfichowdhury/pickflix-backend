class MoviesController < ApplicationController
   
    def index
        movies = Movie.all 
        render json: movies
    end

     def new
        @movie = Movie.new(movies_params)
    end

    def create
        @movie = Movie.create(movies_params)
        render json: @movie
    end


    private
    def movies_params
        params.permit(:id, :netflixid, :title, :image, :rating, :media, :runtime, :largeimage, :imdbid, :priority, :genre, :year, :released, :rated, :director, :writer, :actors, :plot, :language, :country, :awards, :poster, :imdbRating, :imdbVotes)
    end
end
