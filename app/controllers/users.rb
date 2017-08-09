# Controller for users path
class MakersBnB < Sinatra::Base

  get '/users/new' do
    session[:user_id] = nil
    erb :'users/new'
  end

  post '/users/new' do
    @user = User.create(email_address: params[:email_address],
                password: params[:password],
                password_confirmation: params[:password_confirmation])
    if @user.valid?
      session[:user_id] = @user.id
      redirect '/spaces'
    else
      flash.now[:errors] = @user.errors.full_messages
      erb(:'/users/new')
    end
  end
end
