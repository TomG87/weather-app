require "net/http"
class TemperaturesController < ApplicationController

  def index

  
    url = "https://api.openweathermap.org/data/2.5/weather?q=#{params[:city]}&units=imperial&appid=#{Rails.application.credentials.weather_api.api_key}"
    uri = URI(url)
    res = Net::HTTP.get_response(uri)
    @data = JSON.parse(res.body)

    if params[:city] == false
      city = "Metuchen"
    end
  end
end
