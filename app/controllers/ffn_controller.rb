class FfnController < ApplicationController
	def index	
	end

	def cities
		#team search
		@team_nickname = params[:short_name]
		@teams = FfnApi.teams_by_name(@team_nickname)
		@team_list = []
		@teams.each { |team| @team_list << { team: team['shortName']} }
		@team_list
	end

	def listing
		#player search by position
		@player_fullname = params[:position]
		@players = FfnApi.players_by_name(@player_fullname)
		@player_list = []
		@players.each_with_index { |player| @player_list << { player: player['displayName']} }
		@player_list
	end

	def info
		#team search
		@team_nickname = params[:short_name]
		@teams = FfnApi.teams_by_name(@team_nickname)
		@team_list = []
		@teams.each { |team| @team_list << { team: team['shortName']} }
		@team_list

		#player search by position
		@player_fullname = params[:position]
		@players = FfnApi.players_by_name(@player_fullname)
		@player_list = []
		@players.each_with_index { |player| @player_list << { player: player['displayName']} }
		@player_list

		
	end
end