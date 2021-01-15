class User < ApplicationRecord
    attr_accessor :user
    has_secure_password
    validates :username, uniqueness: {case_sensitive: false}
    has_many :liked_movies
    has_many :movies, through: :liked_movies
    has_many :watched_movies
    has_one_attached :photo

end
