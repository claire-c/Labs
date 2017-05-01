# def show_balance(pin_code)
#   if pin_code == 1234
#     return "Balance is £456"
#   else
#     return "Wrong PIN"
#   end
# end
#
# puts "Enter PIN to get balance!"
#
# pin = gets.chomp().to_i
#
# puts show_balance(pin)

def enter_ride(height)
  if height < 120
    return "Sorry too short"
  elsif height > 500
    return "Sorry too tall"
  else
    return "Enter"
end
end

puts "Enter height!"

entered_height = gets.chomp().to_i

# puts "enter weight!"

# entered_weight = gets.chomp().to_i

puts enter_ride(entered_height )
