require_relative("../db/sql_runner")

class Match

  attr_accessor :id

  def initialize (options)
    @id = options['id'].to_i
    @league_id = options['league_id'].to_i
  end
def save()
  sql = "INSERT INTO matches
  (
    league_id
    )
    VALUES(
      $1
    )
    RETURNING id"
    values = [league_id]
    match = SqlRunner.run(sql, values).first
    @id = match['id'].to_i
end

end
