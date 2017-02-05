# Get 2 numbers from the user, add them together, and print out their sum

welcome_message = "Please give me a number."

puts welcome_message

user_input1_fixnum = gets().to_i()

puts user_input1_fixnum

second_message = "Great choice! Can I have another number?"

puts second_message

user_input2_fixnum = gets().to_i()

puts user_input2_fixnum

final_message = "I'm going to add them together for you"

puts final_message

sum = user_input1_fixnum + user_input2_fixnum

puts sum
