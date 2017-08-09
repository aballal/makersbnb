# Controller for bookings path
class MakersBnB < Sinatra::Base

  get '/bookings' do
    erb :'bookings/new'
  end
end
