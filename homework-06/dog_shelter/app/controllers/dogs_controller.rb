class DogsController < ApplicationController

	def index
		@dogs = Dog.all

		@dog_image = [
			"http://www.icon2s.com/img64/64x64-animal-icon-dog.png",
			"http://icons.iconarchive.com/icons/iconka/tailwaggers/64/dog-labrador-icon.png",
			"http://files.softicons.com/download/animal-icons/tail-waggers-icons-by-iconka/png/64x64/boxer.png",
			"https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRASF3DZZby1euuGOU7HFSBQtzIGmp9gyLQ_nYkPaFvN0ciPdq7"
		]
	end

	def show
		@dog = Dog.find(params[:id])

		
		@dog_image = [
			"http://www.icon2s.com/img64/64x64-animal-icon-dog.png",
			"http://icons.iconarchive.com/icons/iconka/tailwaggers/64/dog-labrador-icon.png",
			"http://files.softicons.com/download/animal-icons/tail-waggers-icons-by-iconka/png/64x64/boxer.png",
			"https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRASF3DZZby1euuGOU7HFSBQtzIGmp9gyLQ_nYkPaFvN0ciPdq7"
		]		
	end

	def new
		@dog = Dog.new
	end

	def create
		@dog = Dog.new(dog_params)

		if @dog.save
			redirect_to '/'
		else
			@errors = @dog.errors.full_messages
			render :new
		end
	end

	def edit
		@dog = Dog.find(params[:id])
	end

	def update
		@dog = Dog.find(params[:id])

		if @dog.update(dog_params)
			redirect_to '/'
		else
			@errors = @dog.errors.full_messages
			render :edit
		end
	end

	# def destroy
	# 	@dog = Dog.find(params[:id])
	# 	@dog.destroy
	# 	redirect_to '/'
	# end

private
	def dog_params
		params.require(:dog).permit(:name, :breed, :color, :size, :age)
	end
end