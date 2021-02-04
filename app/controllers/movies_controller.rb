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
        params.permit(:backdrop, :release_date, :genre_ids, :movie_id, :title, :tagline, :runtime, :overview, :popularity, :poster, :vote_average, :vote_count, :watch_providers, :homepage)
    end
end
