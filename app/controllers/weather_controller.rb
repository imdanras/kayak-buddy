class WeatherController < ApplicationController
  
  before_action = :current_user
  # before_action :is_authenticated?

  def index

data = RestClient.get("http://magicseaweed.com/api/deecd9b63d7991728f562f51a86f7b79/forecast/?spot_id=308&units=us", {

})

@data = JSON.parse(data)

# render :json => @data
  end
end