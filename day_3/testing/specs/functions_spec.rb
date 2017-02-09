require("minitest/autorun")
require_relative("../functions")

class FunctionsTest < MiniTest::Test
def test_greet()
greeting = greet("Claire", "morning")
assert_equal("Good morning Claire", greeting)
end

def test_shout()
  message = shout("hey claire")
  assert_equal("HEY CLAIRE", message)
end

end
