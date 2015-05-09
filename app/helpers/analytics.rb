def response_percentage(choice, survey)
  numerator = choice.responses.count
  denominator = survey.surveys_users.count
  return ('%.2f' % (numerator*100/denominator)) + "%"
end
