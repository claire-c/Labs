require( 'minitest/autorun' )
require_relative( '../ruby_conditionals_practice' )

class ConditionalsPracticeTest < MiniTest::Test

  # Water Description
  # Write a function; water_description which takes in a temperature (Fixnum) as an argument
  # The function should return a string "ice" if the temperature is below 0
  def test_is_ice_when_below_0
    water_state = water_description(-10)
    assert_equal("ice", water_state)
  end

  # The function should return a string "water" if the temperature is above 0
  def test_is_water_when_above_0
    water_state = water_description(20)
    assert_equal("water", water_state)
  end

  # The function should return a string "steam" if the temperature is above 100
  def test_is_steam_when_above_100
    water_state = water_description(101)
    assert_equal("steam", water_state)
  end

  # Tax Calculator
  # Write a function that returns the tax due for a bank account. The function should take in the
  # the amount of the bank account(Float) and the account_type(String)
  # The function should return 10 percent of the value of a "normal" bank account
  def test_returns_10_percent_for_normal_bank_account
    tax_due = bank_account_tax_due("normal", 100.00)
    assert_equal(10.00, tax_due)
  end

  def test_returns_0_for_a_offshore_bank_account
    tax_due = bank_account_tax_due( "offshore", 1000.00 )
    assert_equal( 0, tax_due )
  end

  # Hero Movement
  # Write a function that returns the movement of a hero.
  # The function takes in the the race of the hero: "human", "elf", "dwarf"  as a String
  # And a dice roll - FixNum

  # The function should return the dice roll value if the hero is human
  def test_returns_stength_value_for_human
    movement = hero_movement( "human", 6 )
    assert_equal( 6, movement )
  end

  # The function should return the dice roll value times two if the hero is elf
  def test_returns_strength_value_times_2
    movement = hero_movement( "elf", 6)
    assert_equal(12, movement)
  end

  # The function should return half the dice roll for a dwarf
  def test_returns_strength_value_halved
    movement = hero_movement("dwarf", 6)
    assert_equal(3, movement)
  end

  def test_returns_no_strength_value
skip
  end


  # Create a should_eat function; that takes in a food(String) and season(String) - winter,summer,spring, autumn
  # return false if "ice cream" and "winter",
  # return false if "hot chocolate" and "summer",
  # returns true in all other cases

  # def should_eat( food, season )
  #   if food == "ice cream" && season == "winter"
  #     return false
  #   elsif food == "hot chocolate" && season == "summer"
  #     return false
  #   else
  #     return true
  # end
  # end

  def test_dont_eat_icecream_in_winter
    time_to_eat = should_eat( "ice cream", "winter" )
    assert_equal( false, time_to_eat )
  end

  def test_dont_eat_hotchoc_in_summer
time_to_eat = should_eat("hot chocolate", "summer")
assert_equal(false, time_to_eat)
  end

  def do_eat_seasonally_appropriate_food
    time_to_eat = should_eat("strawberries", "spring")
    assert_equal(true, time_to_eat)
  end

end
