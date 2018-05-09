# The request message consists of the following:
#
# A request line - for example GET /images/logo.png HTTP/1.1 the URL
# for the resource and the method definition (verb)
# Request header fields, such as Accept-Language: en.
# An empty line.
# An optional message body.

# The client may also request changes to the resource, or create
# new resources (this is where PUT and POST come in)
# or request to DELETE them.

# A resource is piece of data or media, for example:
# youtube.com/videos bbc.co.uk/sport instagram.com/
# images spotify.com/music

#POST. PUT method is designed to update an existing resouce.

require ('sinatra')
require ('sinatra/contrib/all')
require_relative ('../models/league.rb')

get '/leagues' do
  @leagues = League.all()
  erb (:"leagues/index")
end
