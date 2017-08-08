# Server
class MakersBnB < Sinatra::Base
  enable :sessions
  set :session_secret, 'super secret'

  get '/' do
    redirect 'spaces/new'
  end
end
