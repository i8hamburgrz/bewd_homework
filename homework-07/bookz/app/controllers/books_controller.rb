class BooksController < ApplicationController
	def new
		@book = Book.new
		@authors = Author.all
	end

	def create
		@book = Book.new(book_params)

		if @book.save
			redirect_to '/'
		else
			render :new
		end
	end

private

  def book_params
    params.require(:book).permit(:title, :genre, :year)
  end
end