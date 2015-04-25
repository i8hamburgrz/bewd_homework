require 'sinatra'
require 'httparty'

forcast_url = 'https://api.forecast.io/forecast/8deef2835fd7736a6afd302168019c4c/'


get '/' do

	erb :home
end

post '/results' do
	
	# zip code parsing

	zip_code = params['zip_code']
	zip_url = "http://api.zippopotam.us/us/#{ zip_code }"

	zip = HTTParty.get( zip_url )
	parsed_zip = zip.parsed_response

	long = parsed_zip['places'][0]['longitude']
	lat =  parsed_zip['places'][0]['latitude']

	#forecast parsing

	forcast_url = "https://api.forecast.io/forecast/8deef2835fd7736a6afd302168019c4c/#{ lat },#{ long }"

	forecast = HTTParty.get( forcast_url )
	parsed_forecast = forecast.parsed_response

	@temp_hi = parsed_forecast['daily']['data'][0]['temperatureMax']
	@temp_low = parsed_forecast['daily']['data'][0]['temperatureMin']

	if @temp_hi > 74 
		@message = "<span style='color:red'> Today is Shorts Day!!! YAY!!!</span>"
	else
		@message = "<span style='color:blue'> Today is Pants Day!!! BRRRRRR!!!</span>"
	end

	erb :results
end