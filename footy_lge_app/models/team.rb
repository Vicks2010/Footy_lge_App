require_relative("../db/sql_runner")

class Team

  attr_accessor :id, :name

  def initialize (options)
    @id = options['id'].to_i
    @name = options['name']
    @league_id = options['league_id'].to_i
  end

end
