class PhotosController < ApplicationController
	def new
		@new_photo = Photo.new
		@photogalleries = Gallery.find(params[:gallery_id])
	end

	def create
		@new_photo = Photo.new(photo_params)

		if @new_photo.save
			redirect_to gallery_path(@new_photo.gallery)
		else
			render :new
		end
	end

private
	def photo_params
		params.require(:photo).permit(:description, :picture, :gallery_id)
	end
end