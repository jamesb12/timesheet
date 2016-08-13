class HomeController < ApplicationController
  def index
  	@date = params[:date] ? Date.parse(params[:date]) : Date.today
  end

before_filter :authenticate 

def authenticate
  redirect_to "localhost:3000" unless current_user.present?
end

end
