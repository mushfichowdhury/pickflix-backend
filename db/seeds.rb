Movie.destroy_all
User.destroy_all
LikedMovie.destroy_all

require 'uri'
require 'net/http'
require 'openssl'
require 'JSON'
require "pry"

User.create({
    username: "mushfi123",
    password_digest: "1234",
    name: "Mushfi",
    image: "https://www.gstatic.com/tv/thumb/persons/235135/235135_v9_ba.jpg"
})

User.create({
    username: "jakethebake",
    password_digest: "1234",
    name: "Jake Fromm",
    image: "https://ca.slack-edge.com/T019PM537NK-U01AQM7SG2K-f329e9d135f9-512"
})

User.create({
    username: "seanthebean",
    password_digest: "1234",
    name: "Sean Padden",
    image: "https://ca.slack-edge.com/T02MD9XTF-UJW55RH1R-95bb92aacdc8-512"
})

User.create({
    username: "hasibulthegasibul",
    password_digest: "1234",
    name: "Hasibul Chowdhury",
    image: "https://ca.slack-edge.com/T02MD9XTF-U01CRNE8X3M-20276b8e7e2b-512"
})

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
