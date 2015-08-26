class FfnController < ApplicationController
	def index
		
	end

	def listing
		@team_nickname = params[:short_name]
		@teams = FfnApi.teams_by_name(@team_nickname)
		@list = []
		@teams.each { |team| @list << { team: team['shortName']} }
		@list
	end
end