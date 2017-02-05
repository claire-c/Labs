puts "So you think you're a wrestler, huh? Let's find out your wrestler name."

puts "So, tell me the name of your first pet."

user_pet_name = gets().capitalize()

puts "Nice name. Now give me the name of the first street you lived on."

user_street_name = gets().capitalize()

puts "Sweet! So, with my serious programming skillz, I can tell you that your wrestler name is" + " " + user_pet_name.chomp() + " " + user_street_name.chomp() + "."
