class UsersController < ApplicationController
	before_filter :authorize, only:[:edit, :update]
	#to create new user
	def new
		@user = User.new
	end

	def index
    @users = User.all
	end	


	def user_params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end


	#save user to database or redirect back to page
	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to home_index_path, notice: "thx for signing up squeezer"
		else
			render "new"
		end
	end
end
