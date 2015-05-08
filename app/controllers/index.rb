get '/' do

erb :index
end


post '/logout' do
  session[:user_id] = nil
  redirect '/'
end


