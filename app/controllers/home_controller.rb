
class HomeController < ApplicationController
 def index
 end

def get_weather
require 'httparty'
require 'json'

zip = params[:zip]
url = 'https://api.openweathermap.org/data/2.5/weather?zip='+zip+',us&appid=cccf2858068db11bf29e4fa4847dccbd&units=imperial'
    
response = Rails.cache.fetch(url, :expires_in => 30.minutes) do
     JSON.parse(HTTParty.get(url).body)    
end

     responseweather = response["weather"][0]
    
     @weather = responseweather["description"]
     @temperature = response["main"]["temp"]


end
end