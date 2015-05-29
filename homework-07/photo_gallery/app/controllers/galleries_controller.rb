class GalleriesController < ApplicationController
	def index
		@photogalleries = Gallery.all
	end

	def show
		@photogalleries = Gallery.find(params[:id])
	end

	def new
		@new_gallery = Gallery.new
	end

	def create
		@new_gallery = Gallery.new(photogallery_params)

		if@new_gallery.save
			redirect_to '/'
		else
			render :new
		end
	end

private
	def photogallery_params
		params.require(:gallery).permit(:name)
	end
end