require('pry-byebug')
require_relative('../models/league.rb')
require_relative('../models/match.rb')
require_relative('../models/team_match.rb')
require_relative('../models/team.rb')

Team.delete_all()

team1 = Team.new('name'=> 'Dukes', 'league'=> 'Ozzy1')
team1.save()

team2 = Team.new('name'=> 'Chiefs', 'league'=> 'Ozzy1')
team2.save()

binding.pry
nil
