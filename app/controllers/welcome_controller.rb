class WelcomeController < ApplicationController
	def welcome
		
	end

	def index
		@positions = Position.all
	end

	def show
		@position = Position.find(params[:id]) 
	end
end