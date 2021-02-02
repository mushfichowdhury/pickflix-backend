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
        params.permit(:backdrop, :first_air_date, :genre_ids, :movie_id, :name, :origin_country, :original_language, :original_name, :overview, :popularity, :poster, :vote_average, :vote_count)
    end
end
