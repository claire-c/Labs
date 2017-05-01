require("pry")

def number_of_bank_accounts( accounts )
return accounts.length()
end

# def first_bank_account_holder( accounts )
# return accounts.first()["holder_name"]
# end

def first_bank_account_holder( accounts )
first_account = accounts.first()
return first_account["holder_name"]
end

def bank_account_owner_names ( accounts )
holder_names = []
for account in accounts
holder_names.push(account["holder_name"]) # holder_names << account["holder_name"]
end
return holder_names
end

# def test_total_cash_in_bank
#   total_cash = total_cash_in_bank(@accounts)
#   assert_equal(7311, total_cash)
# end

def total_cash_in_bank( accounts )
total_cash = 0
for account in accounts
total_cash += account["amount"]
end
return total_cash
end

# def test_total_cash_in_business_accounts # conditional operator
#   skip
#   total_cash_business = total_business_cash_in_bank(@accounts)
#   assert_equal(7055,total_cash_business)
# end

def total_business_cash_in_bank ( accounts )
total_cash_business = 0
for account in accounts
if account["type"] == "business"
total_cash_business += account["amount"] ##
end
end
return total_cash_business
end

  ##Alternative way to write this --- total_cash_business += account["amount"] if account["type"] == "business"

# def test_average_bank_account_value # counting an average. Call the function within the function. Use the number_of_bank_accounts function within this one. total_cash / number_of_bank_accounts(accounts) - remember to pass the argument into the function that is inside the first function. Oof!
# skip
#   average_value = average_bank_account_value(@accounts)
#   assert_equal(913,average_value)
# end

def average_bank_account_value( accounts )
average_value = total_cash_in_bank( accounts ) / number_of_bank_accounts( accounts )
return average_value
end


# def test_find_accounts_by_risk # use the stats inner hash. Return the stats and get array of names.
#   skip
#   at_risk = find_accounts_by_risk("high", @accounts)
#   assert_equal(["Jay", "Keith", "Zsolt"], at_risk)
# end

def find_accounts_by_risk( risk_rating, accounts )
  high_risk_accounts = []
  for account in accounts
    if account["stats"]["risk_level"] == risk_rating ##
      high_risk_accounts.push(account["holder_name"])
  end
end
return high_risk_accounts
end
##Alternative way to write this high_risk_accounts.push(account["holder_name"]) if account["stats"]["risk_level"] == risk_rating

# def test_name_of_largest_value_account_holder # String Sandy only. This is the same as the polar bear question.
#   largest_value_account_holder = largest_bank_account_holder(@accounts)
#   assert_equal('Sandy',largest_value_account_holder)
# end


def richest_bank_account_holder( accounts )
  richest_account_holder = accounts[0]
  for account in accounts
    if account["amount"] > richest_account_holder["amount"]
      richest_account_holder = account
    end
  end
  return richest_account_holder["holder_name"]
end

# def test_name_of_largest_personal_account_holder #function that returns personal account and then the largest account holder.
#   largest_personal_account_holder = largest_bank_account_holder('personal', @accounts)
#   assert_equal('Tony',largest_personal_account_holder)
# end

def largest_personal_bank_account_holder( account_type, accounts )
personal_accounts = []
  for account in accounts
    if account["type"] == account_type
      personal_accounts.push(account)
    end
  end
    return richest_bank_account_holder( personal_accounts )
end



# def test_name_of_largest_business_account_holder #call the function within the function. Remember to pass the argument into the function, otherwise it won't work.
#   largest_business_account_holder = largest_business_bank_account_holder("business", @accounts)
#   assert_equal("Sandy",largest_personal_account_holder)
# end

def largest_business_bank_account_holder( account_type, accounts )
business_accounts = []
for account in accounts
  if account["type"] == "business"
    business_accounts.push(account)
  end
end
return richest_bank_account_holder( business_accounts )
end

#for last two examples! I did it wrong

def largest_bank_account_holder(type=nil, accounts)
if type != nil #does not equal
  filtered_accounts = []
  for account in accounts
    filtered_accounts.push(account) if account["type"] == type
end
return largest_account["holder_name"]
end
#This part of the function should really be stored in a separate filter function that I call on.
largest_account = filtered_accounts[0]
for account in filtered_accounts
largest_account = account if account["amount"] > largest_account["amount"]
end
return largest_account["holder_name"]
end
