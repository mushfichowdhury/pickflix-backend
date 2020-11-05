class Movie < ApplicationRecord
    has_many :liked_movies
    has_many :users, through: :liked_movies
    has_many :watched_movies
end
