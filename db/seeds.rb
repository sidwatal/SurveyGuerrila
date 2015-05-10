User.create(name:"Sherman", email:"sherman@gmail.com", password:"12345")
User.create(name:"Sid", email:"sid@gmail.com", password:"12345")
User.create(name:"Scott", email:"scott@gmail.com", password:"12345")
User.create(name:"Thing2", email:"thing2@gmail.com", password:"12345")
User.create(name:"Thing1", email:"thing1@gmail.com", password:"12345")
User.create(name:"Person", email:"person@gmail.com", password:"12345")
User.create(name:"Zack", email:"zack@gmail.com", password:"12345")
User.create(name:"Taker1", email:"taker1@gmail.com", password:"12345")
User.create(name:"Taker2", email:"taker2@gmail.com", password:"12345")
User.create(name:"Taker3", email:"taker3@gmail.com", password:"12345")
User.create(name:"Taker4", email:"taker4@gmail.com", password:"12345")

Survey.create(title:"Ice Creams!", creator_id: 1)

Question.create(survey_id:1, question_text:"On a scale of 1 to 10, what's your favorite flavor?")

Choice.create(question_id:1, choice_text:'Vanilla')
Choice.create(question_id:1, choice_text:'Chocolate')
Choice.create(question_id:1, choice_text:'Pistachio')
Choice.create(question_id:1, choice_text:'9')

Question.create(survey_id:1, question_text:"How much IC you eat in a week?")

Choice.create(question_id:2, choice_text:'9 pounds')
Choice.create(question_id:2, choice_text:'10 pounds')
Choice.create(question_id:2, choice_text:'2 ice cream cones')
Choice.create(question_id:2, choice_text:'cloud')

Question.create(survey_id:1, question_text:"Why?")

Choice.create(question_id:3, choice_text:'Because.')
Choice.create(question_id:3, choice_text:'Why not?')
Choice.create(question_id:3, choice_text:'Religious reasons.')
Choice.create(question_id:3, choice_text:'Mendel')

Question.create(survey_id:1, question_text:"How many licks does it take to get to the center of a tootsie pop?")

Choice.create(question_id:4, choice_text:'2')
Choice.create(question_id:4, choice_text:'4')
Choice.create(question_id:4, choice_text:'6')
Choice.create(question_id:4, choice_text:'Palm Pilot')

Question.create(survey_id:1, question_text:"How high does the sycamore grow?")

Choice.create(question_id:5, choice_text:'If you cut it down you will never know')
Choice.create(question_id:5, choice_text:'20 feet')
Choice.create(question_id:5, choice_text:'50 feet')
Choice.create(question_id:5, choice_text:'Avatar was a terrible movie')

Question.create(survey_id:1, question_text:"How do you feel?(1-10)")

Choice.create(question_id:6, choice_text:'1')
Choice.create(question_id:6, choice_text:'2')
Choice.create(question_id:6, choice_text:'3')
Choice.create(question_id:6, choice_text:'5')
Choice.create(question_id:6, choice_text:'6')
Choice.create(question_id:6, choice_text:'7')
Choice.create(question_id:6, choice_text:'8')
Choice.create(question_id:6, choice_text:'9')
Choice.create(question_id:6, choice_text:'10')
