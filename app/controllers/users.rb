# Controller for users path
class MakersBnB < Sinatra::Base

  get '/users/new' do
    erb :'users/new'
  end

  post '/users/new' do
    User.create(email_address: params[:email_address],
                password: params[:password],
                password_confirmation: params[:password_confirmation])
    redirect '/spaces'
  end
end
