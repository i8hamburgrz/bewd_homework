class MainframeController < ApplicationController
	def home
	end

	def login
	end
	
	def mainframe
		password = 1234

		@my_password = params['password']

		if params['password'] == password

			#nothing, render template

		else

			redirect_to '/fail'

		end

	end

	def fail
	end
end