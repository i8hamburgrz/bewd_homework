require 'sinatra'
require 'httparty'

zip_url = 'http://api.zippopotam.us/us/'
forcast_url = 'https://api.forecast.io/forecast/8deef2835fd7736a6afd302168019c4c/'


get '/' do

	erb :home
end

post '/results' do
	
	# zip code parsing

	zip_code = params['zip_code']
	full_zip_url = zip_url + zip_code

	zip = HTTParty.get( full_zip_url )
	parsed_zip = zip.parsed_response

	long = parsed_zip['places'][0]['longitude']
	lat =  parsed_zip['places'][0]['latitude']

	#forecast parsing

	full_forcast_url = forcast_url + lat + ',' + long

	forecast = HTTParty.get( full_forcast_url )
	parsed_forecast = forecast.parsed_response

	@temp_hi = parsed_forecast['daily']['data'][0]['temperatureMax']
	@temp_low = parsed_forecast['daily']['data'][0]['temperatureMin']

	erb :results
end