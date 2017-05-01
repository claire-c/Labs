require_relative('../bank_account_functions')
require_relative('../bank_data')
require('minitest/autorun')

class BankTest < MiniTest::Test

#This def setup resets the global ACCOUNTS variable for each test that happens as the program runs. It makes everything neater. If you declare something within here, it will reset and run whatever is held within the def setup. The @variable is needed so it can leave the def end area. Otherwise if it was accounts it wouldn't leave the def.

  def setup
    @accounts = ACCOUNTS
  end

  def test_total_number_of_accounts
    bank_accounts_count = number_of_bank_accounts(@accounts)
    assert_equal(8,bank_accounts_count)
  end

  def test_first_account_holder
    first_account = first_bank_account_holder(@accounts)
    assert_equal("Jay", first_account)
  end

  def test_bank_holder_names
    account_names = bank_account_owner_names(@accounts)
    expected = ["Jay","Rick","Keith","Valerie","Zsolt","Beth","Tony","Sandy"]
    assert_equal(expected, account_names)
  end

  def test_total_cash_in_bank
    total_cash = total_cash_in_bank(@accounts)
    assert_equal(7311, total_cash)
  end

  def test_total_cash_in_business_accounts # conditional operator
    total_cash_business = total_business_cash_in_bank(@accounts)
    assert_equal(7055,total_cash_business)
  end

  def test_average_bank_account_value # counting an average. Call the function within the function. Use the number_of_bank_accounts function within this one. total_cash / number_of_bank_accounts(accounts) - remember to pass the argument into the function that is inside the first function. Oof!
    average_value = average_bank_account_value(@accounts)
    assert_equal(913,average_value)
  end

  def test_find_accounts_by_risk # use the stats inner hash. Return the stats and get array of names.
    at_risk = find_accounts_by_risk("high", @accounts)
    assert_equal(["Jay", "Keith", "Zsolt"], at_risk)
  end

  def test_name_of_largest_value_account_holder # String Sandy only. This is the same as the polar bear question.
    largest_value_account_holder = richest_bank_account_holder(@accounts)
    assert_equal("Sandy",largest_value_account_holder)
  end

  def test_name_of_largest_personal_account_holder #function that returns personal account and then the largest account holder.
    largest_personal_account_holder = largest_personal_bank_account_holder("personal", @accounts)
    assert_equal("Tony",largest_personal_account_holder)
  end

  def test_name_of_largest_business_account_holder #call the function within the function. Remember to pass the argument into the function, otherwise it won't work.
    largest_business_account_holder = largest_business_bank_account_holder("business", @accounts)
    assert_equal("Sandy",largest_business_account_holder)
  end

end
