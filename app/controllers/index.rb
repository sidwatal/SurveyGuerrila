get '/' do
  if session[:user_id]
    redirect "/dashboard"
  else
    erb :index
  end
end

post '/logout' do
  session[:user_id] = nil
  redirect '/'
end

post '/login' do
  current_user = User.find_by(email: params[:email])
  if current_user && current_user.authenticate(params[:password])
    session[:user_id] = current_user.id
    redirect back
  else
    redirect '/?error=unauthorized'
  end
end
