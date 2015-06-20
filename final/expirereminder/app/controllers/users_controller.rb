class UsersController < ApplicationController
  	def create
    	@user = User.new(user_params)

      if @user.valid?
      	if @user.save
          flash[:notice] = "Account Created!"
      		redirect_to '/dashboard'
        end
    	else
          flash[:error] = "Failed Creating Account. Please check the form and try again"
      		render :template => 'home/home.html.erb'
    	end
  	end

private

  	def user_params
    	params.require(:user).permit(:name, :email, :password, :password_confirmation)
  	end
end

