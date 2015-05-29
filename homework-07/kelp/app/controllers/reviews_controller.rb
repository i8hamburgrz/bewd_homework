class ReviewsController < ApplicationController
	def new
		@review = Review.new
		@restaurant = Restaurant.find(params[:rest_id])
	end

	def create
		@review = Review.new(review_params)

		if @review.save
			redirect_to restaurant_path(@review.restaurant)
		else
			render :new
		end
	end

private
	def review_params
		params.require(:review).permit(:body, :author, :restaurant_id)
	end
end