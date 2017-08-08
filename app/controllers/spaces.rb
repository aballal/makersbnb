# Controller for spaces path
class MakersBnB < Sinatra::Base
  get '/spaces/new' do
    erb :'spaces/new'
  end

  get '/spaces' do
    # erb :'spaces/index'
  end

  post '/spaces' do
    Space.create(name: params[:name], description: params[:description],
                 price_per_night: params[:price_per_night],
                 available_from: params[:available_from],
                 available_to: params[:available_to])
    redirect '/spaces'
  end
end
