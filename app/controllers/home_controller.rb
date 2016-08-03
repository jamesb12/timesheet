class HomeController < ApplicationController
	before_filter :authorize, only: [:edit, :update]
  def index
  	@date = params[:date] ? Date.parse(params[:date]) : Date.today
  end
end
