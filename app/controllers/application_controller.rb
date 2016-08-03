class ApplicationController < ActionController::Base
  protect_from_forgery

private

	def current_user
		@current_user ||= User.find_by(session[:used_id]) if session[:user_id]
	end
	helper_method :current_user

	def authorize
		redirect_to login_url, alert: "not allowed" if current_user.nil?
	end


end
