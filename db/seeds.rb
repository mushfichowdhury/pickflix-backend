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

User.create({
    username: "user",
    password_digest: "1234",
    name: "Dwayne",
    image: "https://www.gstatic.com/tv/thumb/persons/235135/235135_v9_ba.jpg"
})

def get_movies
    key = "90e02a1e2cdf5cf6621cf4a738631008"
    url = "https://api.themoviedb.org/3"
    # movie_requests = {
    #     "get_trending": "/trending/all/week?api_key=#{key}&language=en-US",
    #     "get_netflixoriginals": "/discover/tv?api_key=#{key}&with_networks=213",
    #     "get_toprated": "/movie/top_rated?api_key=#{key}&language=en-US",
    #     "get_action": "/discover/movie?api_key=#{key}&with_genres=28",
    #     "get_comedy": "/discover/movie?api_key=#{key}&with_genres=35",
    #     "get_horror": "/discover/movie?api_key=#{key}&with_genres=27",
    #     "get_romance": "/discover/movie?api_key=#{key}&with_genres=10749"
    # }
    netflix_originals = "/discover/tv?api_key=#{key}&with_networks=213",
    movie_requests = [
        "/trending/all/week?api_key=#{key}&language=en-US",
        "/movie/top_rated?api_key=#{key}&language=en-US",
        "/discover/movie?api_key=#{key}&with_genres=28",
        "/discover/movie?api_key=#{key}&with_genres=35",
        "/discover/movie?api_key=#{key}&with_genres=27",
        "/discover/movie?api_key=#{key}&with_genres=10749"
    ]
    

    response = HTTParty.get("#{url}#{netflix_originals}")
    data = response["results"]
    data.each do |movie|
        Movie.create({
            "backdrop": movie["backdrop_path"],
            "first_air_date": movie["first_air_date"],
            "genre_ids": movie["genre_ids"],
            "movie_id": movie["id"],
            "name": movie["name"],
            "origin_country": movie["origin_country"],
            "original_language": movie["original_language"],
            "original_name": movie["original_name"], 
            "overview": movie["overview"],
            "popularity": movie["popularity"],
            "poster": movie["poster_path"],
            "vote_average": movie["vote_average"],
            "vote_count": movie["vote_count"]
        })
    end
    
end

get_movies















# def get_all_comedies
#     comedy_genre_ids = "11559,77230,11039,89585,77599,10375,78163,1003219,9302,1078"
#     comedy_page_num = 1
    
#     while comedy_page_num < 3
#         unogs_request(comedy_genre_ids, comedy_page_num)
#         comedy_page_num += 1
#     end  
# end

# def get_all_horrors
#     horror_genre_ids = "83059,8711,89585,9509,45028,10944,48303,90848,8195,10695"
#     horror_page_num = 1

#     while horror_page_num < 3
#         unogs_request(horror_genre_ids, horror_page_num)
#         horror_page_num += 1
#     end
# end

# def get_all_actions
#     action_genre_ids = "90176,77232,43048,1568,43040,2653,10673,1365,801362"
#     action_page_num = 1

#     while action_page_num < 3
#         unogs_request(action_genre_ids, action_page_num)
#         action_page_num += 1
#     end
# end


# def unogs_request(genre_id_string, page_num)
#     url = URI("https://rapidapi.p.rapidapi.com/aaapi.cgi?q=%7Bquery%7D-!1900%2C2018-!0%2C5-!0%2C10-!#{genre_id_string}-!Any-!Any-!Any-!gt100-!%7Bdownloadable%7D&t=ns&cl=all&st=adv&ob=Relevance&p=#{page_num}&sa=and")
#     http = Net::HTTP.new(url.host, url.port)
#     http.use_ssl = true
#     http.verify_mode = OpenSSL::SSL::VERIFY_NONE

#     request = Net::HTTP::Get.new(url)
#     request["x-rapidapi-key"] = '8afd7ffa98msh66c5e14a405f912p133da5jsne6eb4d751d16'
#     request["x-rapidapi-host"] = 'unogs-unogs-v1.p.rapidapi.com'

#     response = http.request(request)
#     readable_response = JSON.parse(response.read_body)
    
#     create_movie_objects(readable_response)
    
# end

# $api_key = "91b02583"

# def omdb_request(imdb_id, api_key)
#     url = URI("http://omdbapi.com/?i=#{imdb_id}&apikey=#{$api_key}&plot=full")
#     http = Net::HTTP.new(url.host, url.port)
#     http.use_ssl = false
#     http.verify_mode = OpenSSL::SSL::VERIFY_NONE

#     request = Net::HTTP::Get.new(url)
#     response = http.request(request)
#     readable_response = JSON.parse(response.read_body)
# end


# def create_movie_objects(movie_hash)
#         movie_hash["ITEMS"].each do |movie|
#             omdb_hash = omdb_request(movie["imdbid"], $api_key)
#             add_movie = Movie.new(
#                 "netflixid": movie["netflixid"],
#                 "title": movie["title"],
#                 "image": movie["image"],
#                 "rating": movie["rating"],
#                 "media": movie["type"],
#                 "runtime": movie["runtime"],
#                 "largeimage": movie["largeimage"],
#                 "imdbid": movie["imdbid"],
#                 "priority": 10,
#                 "genre": omdb_hash["Genre"],
#                 "year": omdb_hash["Year"],
#                 "released": omdb_hash["Released"],
#                 "rated": omdb_hash["Rated"],
#                 "director": omdb_hash["Director"],
#                 "writer": omdb_hash["Writer"],
#                 "actors": omdb_hash["Actors"],
#                 "plot": omdb_hash["Plot"],
#                 "language": omdb_hash["Language"],
#                 "country": omdb_hash["Country"],
#                 "awards": omdb_hash["Awards"],
#                 "poster": omdb_hash["Poster"],
#                 "imdbRating": omdb_hash["imdbRating"],
#                 "imdbVotes": omdb_hash["imdbVotes"]

#             )
#             add_movie.save   
#     end
# end

# get_all_comedies
# get_all_horrors
# get_all_actions
