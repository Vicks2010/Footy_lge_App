require_relative("../db/sql_runner")

class League

  attr_accessor :id, :name

  def initialize (options)
    @id = options['id'].to_i
    @name = options['name']
  end

  def save()
    sql = "INSERT INTO leagues(
    name
  )
  VALUES
  (
    $1
  )
  RETURNING id"
  values = [@name]
  league = SqlRunner.run(sql, values).first
  @id = league['id'].to_i
end
end
