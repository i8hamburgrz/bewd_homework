class HomeController < ApplicationController

	def home
		@books = Book.all
		@authors = Author.all
	end
end