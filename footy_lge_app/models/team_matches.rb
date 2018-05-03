require('pg')

class TeamMatch

  attr_accessor :id

  def initialize (options)
    @id = options['id'].to_i
    @match_id = options['match_id'].to_i
    @team1_id = options['team1_id'].to_i
    @team2_id = options['team2_id'].to_i
  end

end
