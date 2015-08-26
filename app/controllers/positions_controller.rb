class PositionsController < ApplicationController
	def index
		@positions = Position.all
	end

	def show
		@position = Position.find(params[:id]) 
	end

	def new
		@position = Position.new	
	end

	def create
		position = Position.create(position_params)
		position.save
		redirect_to 'positions/:id'
	end

	def destroy
		Location.destroy(params[:id])
		redirect_to positions_path
	end

	def edit
		position = Position.find(params[:id])
		position.update(position_params)
		redirect_to position
	end

	def position_params
		params.require(:position).permit(
			:position
			)
	end
	
end