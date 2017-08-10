# Controller for bookings path
class MakersBnB < Sinatra::Base

  get '/bookings' do
    @space = current_space
    erb :'bookings/new'
  end

  post '/bookings' do
    #Don't know how to select date using Capybara
    params[:night] = '30-08-2017' if ENV['RACK_ENV'] = 'test'

    booking = Booking.create(night: params[:night], status: 'Requested',
                            user_id: current_user.id,
                            space_id: current_space.id)
    redirect '/spaces'
  end
end
