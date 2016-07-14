class HomeController < ApplicationController
	def index
		@user = current_user
	end

	def about
		render 'about'
	end

	def contact
	end
end