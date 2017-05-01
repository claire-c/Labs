ages = [ 12, 35, 82, 12, 15, 29, 52, 72 ]




#1. Print the ages to the screen
for age in ages
print age
end


#2. Create an array of people older than 30 and print to screen
#  ( you can use print rather than puts to show an array and it's brackets )


 older_people = []

 for age in ages
 if age > 30
   older_people << age #shovel operator puts age into the array. I used = earlier and that only assigns the variable, oops! can also do older_people.push(age)

   #A guard is an alternative if statement ----> older_people.push(age) if(age > 30)
 end
 end

 print older_people

#3. Find the sum of all the ages.
 sum = 0

 for age in ages
 sum += age
 end

 puts sum
#
# #4. Find the average age.
#
# I need to add all the ages up together using a loop, save them in something and then divide it by the number of objects in the array

# I could use a function of sum as above and reuse it for the below problem.

sum = 0

for age in ages
sum += age
end

print sum / ages.length()

# big_animals = [
#   { "name" => "Polar Bear", "weight" => 500, "carnivore" => true, "habitat" => "land" },
#   { "name" => "Elephant Seal", "weight" => 4000, "carnivore" => true, "habitat" => "sea" },
#   { "name" => "Blue Whale", "weight" => 140000, "carnivore" => false, "habitat" => "sea" },
#   { "name" => "Elephant", "weight" => 6000, "carnivore" => false, "habitat" => "land" },
# ]


#1. Print the names of all the big animals. I need to put the animal names in a new array and then print them.

animal_names = []

for animal in big_animals
animal_names << animal["name"]
end

print animal_names

#2. Create an array of the big animals that are sea based. If habitat is sea, I need to put the animals in a new array and then print it.

sea_animals = []

for animal in big_animals
if animal["habitat"] == "sea"
sea_animals << animal
end
end

print sea_animals

#3. Create an array of the big animals that are carnivores. If an animal carnivore is true, then I need to put them into a new array and print that out.

meat_eaters = []

for animal in big_animals
if animal["carnivore"] == true
  meat_eaters << animal
end
end

print meat_eaters




#4. Find the weight of a polar bear. I need to loop through the array to find the value against the polar bear's weight and then print it out. I can also do this saved as an array.


for animal in big_animals
if animal["name"] == "Polar Bear"
  print animal["weight"]
end
end

#5. Find the largest animal ( hard ) I need to loop through the array and order weight from smallest to largest and then store in a new array. I then need to print out the last object name value as it should have the largest weight.

#so the method is .sort I think
# big_animals.sort_by {"weight"} will sort the full array by weight

# But it looks like I have used an enumerator instead...

# sorted_animals = big_animals.sort_by do |item|
#     item["weight"]
# end
# puts sorted_animals.last["name"]

largest_animal = big_animals[0]
for big_animal in big_animals
  if big_animal["weight"] > largest_animal["weight"]
    largest_animal = big_animal
  end
end

#6. Find the largest carnivore ( harder )

#I need to order the values of the weight key within the big_animals array.

# sorted_animals = big_animals.sort_by do |item|
#     item["weight"]
# end
# #Then I need to sort the true values from "carnivore" into a new array and then call the last one in the array.
#
# heavy_meat_eaters = []
#
# for animal in sorted_animals
# if animal["carnivore"] == true
#   heavy_meat_eaters << animal
# end
# end
#
# print heavy_meat_eaters.last["name"]

largest_meat_eater = meat_eaters[0]

for meat_eater in meat_eaters
  if meat_eater["weight"] > largest_meat_eater["weight"]
  largest_meat_eater = meat_eater
end
end

puts largest_meat_eater
