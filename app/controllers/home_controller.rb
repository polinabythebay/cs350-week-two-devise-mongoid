class HomeController < ApplicationController
  	def index
  		@users = User.all
  	end

  	before_filter :authenticate_user!

	def show
  		@user = User.find(params[:id])
	end
end
