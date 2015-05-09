
get '/signup' do
  erb :'users/signup'
end


post '/signup' do
  user = User.new(name: params[:name], email: params[:email], password: params[:password])
  if user.save
    session[:user_id] = user.id
    redirect "/dashboard/#{user.id}"
  end
end

get '/dashboard' do
  require_logged_in
    user = User.find_by(id: session[:user_id])
    surveys = Survey.where(creator_id: session[:user_id])
    erb :'/users/show', locals:{user: user, surveys: surveys}
end

post '/dashboard/:id/create' do
  if session[:user_id].to_s == params[:id]
    new_survey = Survey.create(title: params[:title], creator_id: session[:user_id])
    redirect to "/survey/#{new_survey.id}/questions "
  end
end



