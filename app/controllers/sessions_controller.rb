class SessionsController < ApplicationController
	before_filter :authorize, only:[:edit, :update]
  def new
  end

def destroy
	session[:user_id] = nil
	redirect_to root_url
end



  def create
  	user = User.find_by_email(params[:email])
  		if user && user.authenticate(params[:password])
  			session[:user_id] = user.id
  			redirect_to home_index_path
  		else
  			render "new"
  		end
  	end


end
