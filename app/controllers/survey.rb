get '/survey/:id' do
  survey = Survey.find_by(id: params[:id])
  questions = survey.questions
  erb :"/surveys/show", locals:{survey: survey, questions: questions}
end

post '/survey/:id' do

end

put '/survey/:id' do

end

delete '/survey/:id' do

end

get '/survey/:survey_id/questions' do |id|
  survey = Survey.find(id)
  erb :'surveys/new_question', locals: {survey: survey}
end

post '/survey/:survey_id/questions' do
  new_question = Question.create(survey_id: params[:survey_id], question_text: params[:question_text])
  params[:choice].each { |key,value| Choice.create(question_id: new_question.id, choice_text: value) }
  redirect "/survey/#{params[:survey_id]}/questions"
end

get '/user/:user_id/survey/:id' do
  user = User.find_by(id: params[:user_id])
  survey = Survey.find_by(id: params[:id])
  erb :'surveys/analytics', locals: {user: user, survey: survey}
end
