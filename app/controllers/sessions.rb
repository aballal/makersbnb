# Controller for sessions path
class MakersBnB < Sinatra::Base

  get '/sessions/new' do
    erb :'sessions/new'
  end

  post '/sessions/new' do
    @user = User.authenticate(params[:email_address], params[:password])
    if @user
      session[:user_id] = @user.id
      redirect '/spaces'
    else
      flash.now[:errors] = ['The email address or password is incorrect']
      erb(:'/sessions/new')
    end
  end

  get '/sessions/delete' do
    session[:user_id] = nil
    flash.keep[:notice] = 'Goodbye!'
    redirect to '/'
  end
end
