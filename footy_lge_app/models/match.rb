require('pg')

class Match

  attr_accessor :id

  def initialize (options)
    @id = options['id'].to_i
    @league_id = options['league_id'].to_i
  end

end
