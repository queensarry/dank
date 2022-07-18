# It's a blog about a blog
# Starring ME!
# Javascript?
# Sinatra eh?

require "sinatra"
require "sinatra/reloader"

get '/' do
    send_file 'index.html'
end




