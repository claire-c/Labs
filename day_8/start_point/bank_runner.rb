require_relative('bank_account_functions')
require_relative('bank_data')

puts "Welcome to CC Bank!"

while(true)
puts "What would you like to do?"
puts
puts "Options:"
puts " 1: Show account holders"
puts " 2: Show accounts by risk"
puts " 3: Show number of bank accounts"
puts " 4: First bank account holder"
puts " 5: Filter accounts by type"
puts " 6: Total cash in bank"
puts " 7: Show account by type"
puts " 8: Average bank account value"
puts " 9: Show the largest bank account holder"
puts " 10: Show the largest bank account value"
puts " q: Exit"

choice = gets.chomp().downcase()

if choice == "q"
  puts "See you later!"
  break
elsif choice == "1"
  puts "Account holders: "
  puts bank_account_owner_names( ACCOUNTS )
elsif choice == "2"
  puts "Choose a risk level:"
  puts "1: high"
  puts "2: medium"
  puts "3: low"
  risk_choice = gets.chomp()
risk_level = show_risk_choice(risk_choice)
  puts "Accounts by risk: "
  puts find_accounts_by_risk( risk_level , ACCOUNTS )
elsif choice == "3"
  puts "Number of bank accounts"
  puts number_of_bank_accounts( ACCOUNTS )
elsif choice == "4"
  puts "First bank account holder"
  puts first_bank_account_holder( ACCOUNTS )
elsif choice == "5"
  puts "Choose an account type to filter:"
  puts "1: business"
  puts "2: personal"
  account_input = gets.chomp()
  show_account = choose_account_type(account_input)
  puts "Filtered accounts by type"
  puts filter_accounts_by_type( show_account, ACCOUNTS )
elsif choice == "6"
  puts "Total cash in bank"
  puts total_cash_in_bank( ACCOUNTS )
elsif choice == "7"
  puts "Accounts by type"
  puts accounts_by_type( ACCOUNTS )
elsif choice == "8"
  puts "Average bank account value"
  puts average_bank_account_value( ACCOUNTS )
elsif choice == "9"
  puts "The largest bank account is:"
  puts largest_bank_account_holder( ACCOUNTS )
elsif choice == "10"
  puts "The largest bank account value is:"
  puts largest_bank_account( ACCOUNTS )
else
  puts "Please enter a valid number"
end
end
