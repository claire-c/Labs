def check_email( email_input1, email_input2 )
if email_input1 == email_input2 && 
  return "Great, thanks!"
else
  return "Your emails don't match."
end
end

puts "Enter your email address"

email_address_input = gets.chomp()

puts "Confirm your email address"

email_address_confirmed = gets.chomp()

puts check_email( email_address_input, email_address_confirmed )

def address_checker( country )
  if country == "Scotland"
    return "We can deliver to Scotland, woop"
  elsif country == "scotland"
    return "Ok we can deliver but remember your capitals!"
  else
    return "Sorry, we can't deliver to #{country} for you"
  end
end

puts "What country do you live in?"

delivery_country = gets.chomp()

puts address_checker(delivery_country)
