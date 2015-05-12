def response_percentage(choice, survey)
  numerator = choice.responses.count
  denominator = survey.surveys_users.count
  denominator == 0 ? 0 : '%.2f' % (numerator*100/denominator)
  #ZM: Delete this commented out code
  # p numerator, denominator
  # '%.2f' % (numerator*100/denominator)
end
