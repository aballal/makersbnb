# Controller for bookings path
class MakersBnB < Sinatra::Base

  get '/bookings' do
    @space = Space.first # For testing only
    # Remove the line above and uncomment the line below when current_space is uncommented
    # @space = current_space
    erb :'bookings/new'
  end

  post '/bookings' do
    redirect '/spaces'
  end
end
