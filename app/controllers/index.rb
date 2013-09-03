# GETS==========================================================================

get '/' do
  erb :index
end

get '/signup' do
  erb :signup
end


# POSTS==========================================================================

post '/' do

  Player.create(params[:user_email],params[:user_password])

  erb :index
end
