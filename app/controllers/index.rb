get '/' do
  if session[:user_id]
    redirect "/dashboard/#{session[:user_id]}"
  else
    erb :index
  end
end

get '/logout' do
  session[:user_id] = nil
  redirect '/'
end

post '/login' do
  current_user = User.find_by(email: params[:email])
  if current_user && current_user.authenticate(params[:password])
    session[:user_id] = current_user.id
    p session[:user_id]
    redirect "/dashboard/#{session[:user_id]}"
  else
    p "unauthorized log-in attempt"
    redirect '/'
  end
end
