# Controller for bookings path
class MakersBnB < Sinatra::Base

  get '/bookings' do
    @space = Space.first # For testing only. This needs to be changed to the selected space.
    erb :'bookings/new'
  end

  post '/bookings' do
    redirect '/spaces'
  end
end
