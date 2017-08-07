# Server
class MakersBnB < Sinatra::Base
  get '/' do
    redirect 'spaces/new'
  end
end
