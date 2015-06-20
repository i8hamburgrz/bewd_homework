class ItemsController < ApplicationController
	before_filter :authorize

	def index
		@items = User.find(current_user.id).items.all
		@expired_items = []
		@last_day_items = []

		@items.each do |item|
			if item.expiration_date < Date.today
				@expired_items.push(item.name)
			elsif item.expiration_date == Date.today
				@last_day_items.push(item.name)
			end
		end

	end

	def new
	    @items = Item.new
	end

	def create
	    @items  = Item.new(item_params)

	    if @items.valid?
		    if @items.save
		      redirect_to '/dashboard'
		  end
	    else
	    	flash[:error] = "Could not create new item. Please try again."
	      	render :new
	    end
	end

	def edit
	    @item = Item.find(params[:id])
	end

	def update
	    @items = Item.find(params[:id])
	    if @items.update_attributes(item_params)
	      redirect_to '/dashboard'
	    else
	    	flash[:error] = "Update failed. Please try again."
	      	render :new
	    end
	end

	def destroy
		@item = Item.find(params[:id])

		@item.destroy
		flash[:notice] = "Item Deleted!"
		redirect_to '/dashboard'
	end


	private

	    def item_params
	      params.require(:item).permit(:name, :expiration_date, :user_id)
	    end
end