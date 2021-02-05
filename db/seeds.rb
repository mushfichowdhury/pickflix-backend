# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Movie.destroy_all
# User.destroy_all
# LikedMovie.destroy_all

require 'httparty'
require 'pry'
require 'uri'

User.create({
    username: "user",
    password_digest: "1234",
    name: "Dwayne",
    image: "https://www.gstatic.com/tv/thumb/persons/235135/235135_v9_ba.jpg"
})

# def get_movies
#     key = "90e02a1e2cdf5cf6621cf4a738631008"
#     base_url = "https://api.themoviedb.org/3/"
#     movieID = 775800
#     sample = "#{base_url}movie/#{movieID}?api_key=#{key}&language=en-US&append_to_response=watch%2Fproviders"
#     # accessing_netflix = response["watch/providers"]["results"]["US"]["flatrate"][0]["provider_name"]
#     while movieID <= 800000 do 
#         response = HTTParty.get("#{sample}")
#         # accessing_flatrate = response["watch/providers"]["results"]["US"]["flatrate"]
#         # binding.pry
#         if response["watch/providers"]["results"].empty?
#             puts movieID
#             movieID += 1
#         elsif movieID === 775996
#             binding.pry
#         else 
#             puts "Success! Movie ##{movieID} has been reached."
#             Movie.create({
#                 "backdrop": response["backdrop_path"],
#                 "release_date": response["release_date"],
#                 "genre_ids": response["genres"],
#                 "response_id": response["id"],
#                 "title": response["title"],
#                 "tagline": response["tagline"],
#                 "runtime": response["runtime"],
#                 "overview": response["overview"],
#                 "popularity": response["popularity"],
#                 "poster": response["poster_path"],
#                 "vote_average": response["vote_average"],
#                 "vote_count": response["vote_count"],
#                 "watch_providers": response["watch/providers"]["results"]["US"],
#                 "homepage": response["homepage"]
#             })
#             movieID += 1
#         end
#     end
# end

# get_movies











