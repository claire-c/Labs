welcome_msg = "Ahoy hoy sailor. Let's see if you've got a cool wrestler name, shall we?"

puts welcome_msg

pet_question = "First things first. Tell me the name of your first pet."

puts pet_question

pet_answer = gets().capitalize()

street_question = "Nice one. How about the name of your first street?"

puts street_question

street_answer = gets().capitalize()

wrestler_name = pet_answer.chomp() + " " + street_answer.chomp() + "."

name_msg = "Oooh very nice. Your wrestler name is " + wrestler_name

puts name_msg
