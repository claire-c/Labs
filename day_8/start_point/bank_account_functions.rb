def number_of_bank_accounts(accounts)
  return accounts.length
end

def first_bank_account_holder(accounts)
  return accounts.first[:holder_name]
end

def bank_account_owner_names(accounts)
  names = []
  for account in accounts
    names << account[:holder_name]
  end
  return names
end

def filter_accounts_by_type(type, accounts)
  filtered_accounts = []
  for account in accounts
    filtered_accounts.push(account) if account[:type] == type
  end
  return filtered_accounts
end

def find_accounts_by_risk(risk_level, accounts)
  risky_accounts = []
  for account in accounts
    risk = account[:stats][:risk_level]
    risky_accounts << account if (risk == risk_level)
  end

  return bank_account_owner_names(risky_accounts)
end

def accounts_by_type(type=nil, accounts)
  if type
    filtered_accounts = filter_accounts_by_type(type, accounts)
  else
    filtered_accounts = accounts
  end

  return filtered_accounts
end

def total_cash_in_bank(type=nil, accounts)
  accounts_by_type = accounts_by_type(type, accounts)
  sum = 0
  for account in accounts_by_type
    sum += account[:amount]
  end
  return sum
end

def average_bank_account_value(accounts)
  return total_cash_in_bank(accounts) / number_of_bank_accounts(accounts)
end

def largest_bank_account_holder(type = nil, accounts)
  largest = largest_bank_account(type, accounts)
  return largest[:holder_name]
end

def largest_bank_account(type = nil, accounts)
  filtered_accounts = accounts_by_type(type, accounts)
  largest_account = filtered_accounts.first

  for account in filtered_accounts
    largest_account = account if account[:amount] > largest_account[:amount]
  end

  return largest_account[:amount]
end



def show_risk_choice( risk_choice )
  if risk_choice == "1"
    risk_level = "high"
  elsif risk_choice == "2"
    risk_level = "medium"
  elsif risk_choice == "3"
    risk_level = "low"
  else
    puts "try again!"
  end
    return risk_level
end

def choose_account_type(account_input)
  if account_input == "1"
    account_type = "business"
  elsif account_input == "2"
    account_type = "personal"
  else
    puts "sorry try again"
  end
end
