get '/survey/:id' do
  survey = Survey.find_by(id: params[:id])
  questions = survey.questions
  erb :"/surveys/show", locals:{survey: survey, questions: questions}
end

post '/survey/:id' do
  require_logged_in
  params[:question].each do |question, choice|
    Response.create(user_id: session[:user_id], choice_id: choice)
  end
    new_survey_response = SurveysUser.new(user_id: session[:user_id], survey_id: params[:id], comment: params[:comment])
    return [500, "You have already taken this survey."] unless new_survey_response.save
  redirect "/"
end

put '/survey/:id' do

end

delete '/survey/:id' do

end

get '/survey/:survey_id/questions' do |id|
  survey = Survey.find(id)
  if session[:user_id] == survey.creator.id
    erb :'surveys/new_question', locals: {survey: survey}
  end
end

post '/survey/:survey_id/questions' do
  survey  = Survey.find_by(id: params[:survey_id])
  if session[:user_id] == survey.creator.id
    new_question = Question.create(survey_id: params[:survey_id], question_text: params[:question_text])
    params[:choice].each { |key,value| Choice.create(question_id: new_question.id, choice_text: key) }
    redirect "/survey/#{params[:survey_id]}/questions"
  end
end

get '/user/:user_id/survey/:id' do
  if session[:user_id].to_s == params[:user_id]
    user = User.find_by(id: params[:user_id])
    survey = Survey.find_by(id: params[:id])
    erb :'surveys/analytics', locals: {user: user, survey: survey}
  else
    return [500, "You are not authorized to view this survey"]
  end
end


