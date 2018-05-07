require('pry-byebug')
require_relative('../models/league.rb')
require_relative('../models/match.rb')
require_relative('../models/team_match.rb')
require_relative('../models/team.rb')

Team.delete_all()

team1 = Team.new("name"=> "Dukes", "league"=> "Ozzy1")
team1.save()

team2 = Team.new("name"=> "Chiefs", "league"=> "Ozzy1")
team2.save()


#League.delete_all()

league1 = League.new("name"=> "Ozzy1")
league1.save()

league2 = League.new("name"=> "Ozzy2")
league2.save()


#Match.delete_all()

match1 = Match.new("league"=> "Ozzy1")
match1.save()

match2 = Match.new("league"=> "Ozzy2")
match2.save()


TeamMatch.delete_all()

teamMatch1 = TeamMatch.new("match"=> "1",
  "team1"=> "Gunners", "team2"=> "Targets",
  "team1_stats_goals"=> "0", "team2team2_stats_goals"=> "2")
  teamMatch1.save()

  teamMatch2 = TeamMatch.new("match"=> "2",
    "team1"=> "Guardians", "team2"=> "Timers",
    "team1_stats_goals"=> "3", "team2team2_stats_goals"=> "1")
    teamMatch2.save()


    binding.pry
    nil
