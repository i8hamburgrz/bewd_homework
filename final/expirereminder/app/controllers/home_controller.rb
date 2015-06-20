class HomeController < ApplicationController
	def home
    	@user = User.new

      if current_user
        redirect_to '/dashboard'
      end
  end


    def edit
        @item = Item.find(params[:id])
    end

private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end