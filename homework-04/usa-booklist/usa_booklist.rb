require 'sinatra'
require 'httparty'


get '/' do
	url = 'http://api.usatoday.com/open/bestsellers/books/ThisWeek?api_key=5apbet7b3s45crmjrrhe6mnm'
	usa_response = HTTParty.get(url)
	parsed = usa_response.parsed_response

	@weeks = parsed['APIParameters']['RecentWeekAllowance'].to_i

	erb :home
end


post '/list' do
	url = 'http://api.usatoday.com/open/bestsellers/books/ThisWeek?api_key=5apbet7b3s45crmjrrhe6mnm'
	usa_response = HTTParty.get(url)
	parsed = usa_response.parsed_response
	
	week = params['week_number'].to_i

	@books = parsed['BookLists'][week]['BookListEntries']


	erb :list
end