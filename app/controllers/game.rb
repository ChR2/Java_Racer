# GETS==========================================================================



# POSTS==========================================================================

post '/game' do
p params
  
  p @player3 = [params[:user1_email], params[:user1_password]]
  p @player4 = [params[:user2_email], params[:user2_password]]
  @player1 = Player.authenticate(params[:user1_email], params[:user1_password])
  @player2 = Player.authenticate(params[:user2_email], params[:user2_password])

  if @player1 && @player2
    erb :game
  else
  @error = "ERROR: User Validation Failed please LogIn"
  erb :index
  end
end



  # user1_email = params[user1_email]
  # user1_password = params[user1_password]
  # user2_email = params[user2_email]
  # user2_password = params[user2_password]
