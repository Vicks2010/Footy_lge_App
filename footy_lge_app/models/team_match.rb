require_relative("../db/sql_runner")

class TeamMatch

  attr_accessor :id

  def initialize (options)
    @id = options['id'].to_i
    @match_id = options['match_id'].to_i
    @team1_id = options['team1_id'].to_i
    @team2_id = options['team2_id'].to_i
    @team1_stats_goals = options['team1_stats_goals'].to_i
    @team2_stats_goals = options['team2_stats_goals'].to_i
  end

  def save()
    sql = "INSERT INTO teamMatches
    (
      match_id,
      team1_id,
      team2_id,
      team1_stats_goals,
      team2_stats_goals
    )
    VALUES
    (
      $1, $2, $3, $4, $5
    )
    RETURNING id"
    values = [@match_id, @team1_id, @team2_id, @team1_stats_goals, @team2_stats_goals]
    teamMatch = SqlRunner.run(sql, values).first
    @id = teamMatch['id'].to_i
  end

end
