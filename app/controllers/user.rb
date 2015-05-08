
get '/signup' do


  erb :'users/signup'
end




post '/signup' do
  user = User.new(name: params[:name], email: params[:email], password: params[:password])
  if user.save
    session[:user_id] = user.id
  redirect '/dashboard'
  end
end


post '/login' do
  current_user = User.find_by(email: params[:email])
  if current_user && current_user.authenticate(params[:password])
    session[:user_id] = current_user.id
    redirect '/dashboard'
  else
    p "unauthorized log-in attempt"
    redirect '/'
  end
end


post '/logout' do
  session[:user_id] = nil
  redirect '/'
end



get '/dashboard' do

erb :'/users/show'
end



