require('pg')

class League

  attr_accessor :id, :name

  def initialize (options)
    @id = options['id'].to_i
    @name = options['name']
  end
  
end
