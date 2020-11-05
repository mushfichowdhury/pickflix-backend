require 'uri'
require 'net/http'
require 'openssl'
require "pry"
require "JSON"

def api_request
    url = URI("https://rapidapi.p.rapidapi.com/aaapi.cgi?q=%7Bquery%7D-!1900%2C2018-!0%2C5-!0%2C10-!11559-!Any-!Any-!Any-!gt100-!%7Bdownloadable%7D&t=ns&cl=all&st=adv&ob=Relevance&p=1&sa=and")

    comedy_genre_ids = "11559,77230,11039,89585,77599,10375,78163,1003219,9302,1077"

    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = Net::HTTP::Get.new(url)
    request["x-rapidapi-key"] = '8afd7ffa98msh66c5e14a405f912p133da5jsne6eb4d751d16'
    request["x-rapidapi-host"] = 'unogs-unogs-v1.p.rapidapi.com'

    response = http.request(request)
    readable_response = JSON.parse(response.read_body)
    binding.pry
end

api_request