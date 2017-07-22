get '/users' do
  redirect '/decks'
end

get '/login' do
  erb :'/users/login'
end

post '/login' do
  @user = User.find_by({username: params[:username]})
  if User.authenticate(@user.username, params[:password])
    session[:user_id] = @user.id
    redirect '/'
  end
end

get '/register' do
  erb :'/users/register'
end

post '/register' do
  @user = User.new({username: params[:username]})
  @user.password = params[:password]
  if @user.valid?
    @user.save!
    session[:user_id] = @user.id
    redirect "/"
  else
    @errors = @user.errors.full_messages
    erb :'/users/register'
  end
end

delete '/logout' do
  session[:user_id] = nil
  redirect '/'
end
