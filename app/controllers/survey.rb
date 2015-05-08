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

get '/survey/create' do

end

post '/survey/create' do

end

get '/user/:user_id/survey/:id' do

end
