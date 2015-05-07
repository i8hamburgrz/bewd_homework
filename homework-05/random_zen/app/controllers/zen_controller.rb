class ZenController < ApplicationController
	def zen
		colors = ['red', 'blue', 'orange', 'green', 'magenta']

		@random_color = colors.shuffle.first
		
		@message = HTTParty.get('https://api.github.com/zen').parsed_response

		@message_nospaces = @message.split(' ').join('%20')

	end
end