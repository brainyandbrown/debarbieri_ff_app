class WelcomeController < ApplicationController
	def welcome
		
	end

	def index
		@positions = Position.all
		@teams = Team.all
	end

	def show
		@position = Position.find(params[:id]) 
		@team = Team.find(params[:id])
	end
end