# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Movie.destroy_all

require 'uri'
require 'net/http'
require 'openssl'
require 'JSON'

def get_all_comedies
    comedy_genre_ids = "11559,77230,11039,89585,77599,10375,78163,1003219,9302,1078"
    comedy_page_num = 1
    
    while comedy_page_num < 20
        api_request(comedy_genre_ids, comedy_page_num, "comedy")
        comedy_page_num += 1
    end  
end

def get_all_horrors
    horror_genre_ids = "83059,8711,89585,9509,45028,10944,48303,90848,8195,10695"
    horror_page_num = 1

    while horror_page_num < 20
        api_request(horror_genre_ids, horror_page_num, "horror")
        horror_page_num += 1
    end
end



def api_request(genre_id_string, page_num, genre)
    url = URI("https://rapidapi.p.rapidapi.com/aaapi.cgi?q=%7Bquery%7D-!1900%2C2018-!0%2C5-!0%2C10-!#{genre_id_string}-!Any-!Any-!Any-!gt100-!%7Bdownloadable%7D&t=ns&cl=all&st=adv&ob=Relevance&p=#{page_num}&sa=and")
    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = Net::HTTP::Get.new(url)
    request["x-rapidapi-key"] = '8afd7ffa98msh66c5e14a405f912p133da5jsne6eb4d751d16'
    request["x-rapidapi-host"] = 'unogs-unogs-v1.p.rapidapi.com'

    response = http.request(request)
    readable_response = JSON.parse(response.read_body)
    
    create_movie_objects(readable_response, genre)
    
end

def create_movie_objects(movie_hash, genre)
        movie_hash["ITEMS"].each do |movie|
        add_movie = Movie.new(
            "netflixid": movie["netflixid"],
            "title": movie["title"],
            "image": movie["image"],
            "synopsis": movie["synopsis"],
            "rating": movie["rating"],
            "media": movie["type"],
            "released": movie["released"],
            "runtime": movie["runtime"],
            "largeimage": movie["largeimage"],
            "unogsdate": movie["unogsdate"],
            "imdbid": movie["imdbid"],
            "download": movie["download"],
            "priority": 5
        )
        add_movie.genre = genre
        add_movie.save   
    end

    
    # if movie_hash.length < 100
    #    $last_page = true 
    # end
end

get_all_comedies
get_all_horrors
