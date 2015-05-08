User.create(name:"Sherman", email:"shermanng10@gmail.com", password_hash:"1234")
User.create(name:"Sid", email:"sid.watal@gmail.com", password_hash:"5678")

Survey.create(title:"Ice Creams!", creator_id: 1)

Question.create(survey_id:1, question_text:"On a scale of 1 to 10, what's your favorite flavor?")
Question.create(survey_id:1, question_text:"How much IC you eat in a week?")
Question.create(survey_id:1, question_text:"Why?")

Choice.create(question_id:1, choice_text:'Vanilla')
Choice.create(question_id:1, choice_text:'Chocolate')
Choice.create(question_id:1, choice_text:'Pistachio')
Choice.create(question_id:1, choice_text:'9')


Choice.create(question_id:2, choice_text:'9 pounds')
Choice.create(question_id:2, choice_text:'10 pounds')
Choice.create(question_id:2, choice_text:'2 ice cream cones')
Choice.create(question_id:2, choice_text:'cloud')


Choice.create(question_id:3, choice_text:'Because.')
Choice.create(question_id:3, choice_text:'Why not?')
Choice.create(question_id:3, choice_text:'Religious reasons.')
Choice.create(question_id:3, choice_text:'Mendel')



