# chickens = ["Margaret", "Hetty", "Henrietta", "Audrey", "Mable"]
#
# for chicken in chickens
#   puts chicken
# end

# numbers = [2, 3, 4, 7, 9]
# new_numbers = []
#
#
# for number in numbers
# new_numbers.push(number * 2) # you can also use the shovel method new_numbers << number * 2
# end
#
# print new_numbers # This print instruction will display as an array, rather than a string. Puts always returns a string.

# numbers = [6, 7, 4, 2, 9, 1]
# sum = 0
#
# for number in numbers
# sum += number # This is the same as sum = sum + number
# end
#
# puts sum

# heroes = [
#   {race: "elf", name: "legolas"},
#   {race: "human", name: "aragorn"},
#   {race: "human", name: "boromir"},
#   {race: "dwarf", name: "gimli"}
# ]
# found_hero = nil
#
# #Find gimli in the array
#
# for hero in heroes
# if hero[:name] == "gimli"
#   found_hero = hero #This puts the hero named "gimli" into the empty variable. Whatever meets the criterion that is currently in the hero variable will be put in there.
# end
# end
#
# puts found_hero

# humans = []
#
# for hero in heroes
# if hero[:race] == "human"
#   humans.push(hero) #This puts the hero variable that meets the criteria into the array
# end
# end
#
# print humans


# counter = 1
# while counter < 10 # can also use until, so until counter > 10. It is the opposite of while.
#   puts counter
#   counter += 1  # Adds 1 to the counter, so 1 + 1, 2 + 1, 3 + 1 up until it hits 10 and then stops.
# end
