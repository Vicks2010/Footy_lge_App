require ('sinatra')
require ('sinatra/contrib/all')
require_relative ('../models/league.rb')
require_relative ('../models/team.rb')

get '/teams' do
  @teams = Team.all()
  erb (:"teams/index")
end
