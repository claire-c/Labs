def greet(name, time_of_day)
  message = "hey"
  # return message + name +", what a wonderful " + time_of_day + "we have."
return "#{message} #{name}, what a wonderful #{time_of_day} we have"
end

user_name = "Claire"
input_time_of_day = "evening"

puts greet(user_name, input_time_of_day)
