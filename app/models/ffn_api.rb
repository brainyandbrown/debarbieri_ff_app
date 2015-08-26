module FfnApi
	# include FFNerd
	def self.teams_by_name(team_nickname)
		# team_name = URI.encode(team_nickname)
		url = 'http://www.fantasyfootballnerd.com/service/nfl-teams/json/he96q9pfk242'
		response = HTTParty.get(url)
		teams_array = response['NFLTeams'].each_with_index { |i| print i['shortName'] + ' ' }
		teams_array
	end
	
end