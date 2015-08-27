module FfnApi
	# include FFNerd
	def self.teams_by_name(team_nickname)
		# team_name = URI.encode(team_nickname)
		url = "http://www.fantasyfootballnerd.com/service/nfl-teams/json/he96q9pfk242"
		response = HTTParty.get(url)
		teams_array = response['NFLTeams'].each_with_index { |i| print i['shortName'] + ' ' }
		teams_array
	end

	def self.players_by_name(full_name)
		position = URI.encode(full_name)
		url = "http://www.fantasyfootballnerd.com/service/players/json/he96q9pfk242/#{position}"
		response = HTTParty.get(url)
		players_array = response['Players'].each_with_index { |i| print i['displayName'] + ' ' }
		players_array
	end
end