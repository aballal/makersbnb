# Server
class MakersBnB < Sinatra::Base
  enable :sessions
  set :session_secret, 'super secret'
  register Sinatra::Flash

  helpers do
    def current_user
      @current_user ||= User.get(session[:user_id])
    end

    # Make below changes when space_id has been stored in session on post /spaces route
    def current_space
      @current_space = Space.first # Delete this
      # @current_space ||= Space.get(session[:space_id]) # uncomment this
    end
  end

  get '/' do
    redirect '/users/new'
  end
end
