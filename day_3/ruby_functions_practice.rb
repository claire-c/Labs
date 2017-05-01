# def test_add()
  # add_result = add( 1, 2 )
  # assert_equal( 3, add_result )
# end


def add(first_number, second_number)
return first_number + second_number
end

# def test_subtract()
  # subtract_result = subtract( 10, 5 )
  # assert_equal( 5, subtract_result )
# end

def subtract(first_number, second_number)
  return first_number - second_number
end

# def test_multiply()
  # multiply_result = multiply( 4, 2 )
  # assert_equal( 8, multiply_result )
# end

def multiply(first_number, second_number)
return (first_number * second_number)
end

# def test_divide()
  # divide_result = divide( 10, 2 )
  # assert_equal( 5, divide_result )
# end

def divide(first_number, second_number)
return first_number / second_number
end

# def test_length_of_string()
  # test_string = "A string of length 21"
  # length_of_string = length_of_string( test_string )
  # assert_equal( 21, length_of_string )
# end

def length_of_string(test_string)
  return test_string.length()
end

# def test_join_string()
  # string_1 = "Mary had a little lamb, "
  # string_2 = "it's fleece was white as snow"
  # joined_string = join_string( string_1, string_2 )
  # assert_equal( "Mary had a little lamb, it's fleece was white as snow", joined_string )
# end

def join_string(string_1, string_2)
return string_1 + string_2
end

# def test_add_string_as_number()
  # add_result = add_string_as_number( "1", "2" )
  # assert_equal( 3, add_result )
# end

def add_string_as_number(first_number, second_number)
return first_number.to_i() + second_number.to_i()
end

# def test_volume_of_cube()
  # volume = volume_of_cube(3)
  # assert_equal(27, volume)
# end

def volume_of_cube(volume) # This should be length_of_side and not volume
return volume ** 3 # the variable should be length_of_side
end

#Given the radius of a sphere calculate the volume
# def test_volume_of_sphere()
  # volume = volume_of_sphere(10)
  # assert_equal(4188.79, volume)
# end

def volume_of_sphere(sphere_radius)
answer = Rational('4/3') * Math::PI * sphere_radius ** 3
return answer.round(2)
end

# def test_fahrenheit_to_celsius()
  # result = fahrenheit_to_celsius(0)
  # assert_equal(-17.78, result)
# end

def fahrenheit_to_celsius(result)
answer = result - 32 * 0.5556 # variable should be celsius to make it clearer
return answer.round(2) # variable should be celsius 
end
