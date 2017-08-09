# Controller for spaces path
class MakersBnB < Sinatra::Base

  get '/spaces' do
    @spaces = Space.all
    erb :'spaces/index'
  end

  post '/spaces' do
    session[:available_from] = params[:available_from]
    session[:available_to] = params[:available_to]
    redirect '/spaces'
  end

  get '/spaces/new' do
    erb :'spaces/new'
  end

  post '/spaces/new' do
    Space.create(name: params[:name], description: params[:description],
                 price_per_night: params[:price_per_night],
                 available_from: params[:available_from],
                 available_to: params[:available_to])
    redirect '/spaces'
  end
end
