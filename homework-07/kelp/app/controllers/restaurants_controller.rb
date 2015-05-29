class RestaurantsController < ApplicationController
	def index
		@restaurants = Restaurant.all
	end

	def show
		@restaurants = Restaurant.find(params[:id])
	end

	def new
		@new_restaurant = Restaurant.new
	end

	def create
		@new_restaurant = Restaurant.new(restaurant_params)

		if @new_restaurant.save
			redirect_to '/'
		else
			render :new
		end
	end

private
	def restaurant_params
		params.require(:restaurant).permit(:name, :address)
	end
end