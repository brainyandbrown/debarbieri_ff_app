module DissemblyApiHelper
  BASE_URI = 'http://www.fantasyfootballnerd.com/service'

  def self.root_path
  	BASE_URI
  end

  def self.get(serviceName)
  	HTTParty.get(root_path + "/#{serviceName}")[serviceName.split('/').last]
  end
 
  def self.get_serviceName(name, hash)
  	serviceNames = get(name).map do |serviceName|
  		symbolify serviceName
  	end
  	hash ? hashify(serviceNames) : serviceNames
  end
  
  def self.set_format(format="json")
  	@@format = "/#{format}"
  end
  set_format = "json"

  def self.set_num(num="he96q9pfk242")
  	@@num = "/#{num}"
  end
  set_num "he96q9pfk242"


# SERVICE_NAMES

	def self.nfl_teams(hash=false)
		get_serviceName "nfl-teams", hash	
	end

	def self.players(hash=false)
		get_serviceName "players", hash	
	end

	def self.byes(hash=false)
		get_serviceName "byes", hash	
	end

	def self.draft_rankings(hash=false)
		get_serviceName "draft-rankings", hash	
	end

	def self.draft_projections(hash=false)
		get_serviceName "draft-projections", hash	
	end

	def self.players(hash=false)
		get_serviceName "players", hash	
	end


end