require ('sinatra')
require ('sinatra/contrib/all')
require ('pry-byebug')
require_relative ('../models/league.rb')
require_relative ('../models/match.rb')
require_relative ('../models/team_match.rb')
require_relative ('../models/team.rb')

get '/team_matches'do
  @team_matches = TeamMatch.all
  erb(:"team_matches/index")
end
