get '/survey/:id' do
  survey = Survey.find_by(id: params[:id])
  erb :"/surveys/show", locals:{survey: survey, 
                                questions: survey.questions}
end

post '/survey/:id' do
  require_logged_in
  begin
    new_survey_response = SurveysUser.new(user_id: session[:user_id], survey_id: params[:id], comment: params[:comment])
    return [500, "You have already taken this survey."] unless new_survey_response.save
    params[:question].each do |question, choice|
      #ZM: If you are going to use create, you should just make sure you
      #handle the erros. Begin/rescue
      Response.create(user_id: session[:user_id], choice_id: choice)
    end
    redirect "/"
  rescue
    redirect "500.html"
  ensure
    #ZM: Do Something always
  end
end

delete '/survey/:id' do
  delete_survey = Survey.find_by(id: params[:id])
  delete_survey.destroy
  redirect '/dashboard' if !request.xhr?
  {success: true}.to_json
  #ZM: What happens if it is an ajax request?
end

get '/survey/:survey_id/questions' do |id|
  survey = Survey.find(id)
  if session[:user_id] == survey.creator.id
    erb :'surveys/new_question', locals: {survey: survey}
  end
end

#ZM: As a team decide to do do |id| or just do 
post '/survey/:survey_id/questions' do
  survey  = Survey.find_by(id: params[:survey_id])
  if survey.creator.id == session[:user_id]
    new_question = Question.create(survey_id: params[:survey_id], question_text: params[:question_text])

    #ZM: Remove p statements
    p params[:choices]
    params[:choices].each { |key, value| Choice.create(question_id: new_question.id, choice_text: value) }
    redirect "/survey/#{params[:survey_id]}/questions" if !request.xhr?
  end
  #ZM: use to_json. Also make an object
  #ZM: {number_of_questions: survey.questions.length}.to_json
  return survey.questions.length.to_s
end

get '/survey/:survey_id/share' do
  survey = Survey.find_by(id: params[:survey_id])
  erb :'/surveys/finished', locals:{survey: survey}
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


