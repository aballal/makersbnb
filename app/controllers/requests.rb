# Controller for requests path
class MakersBnB < Sinatra::Base
  get '/requests' do
    @requests_made = Booking.all(:user_id => current_user.id)
    spaces = Space.all(:user_id => current_user.id)
    @requests_received = spaces.map { |space| p Booking.all(:space_id => space.id) }
    erb :'requests/index'
  end

  get '/requests/made' do
    erb :'requests/made'
  end

  get '/requests/received' do
    erb :'requests/received'
  end

end
