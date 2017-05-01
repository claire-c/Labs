big_animals = [
  { "name" => "Polar Bear", "weight" => 500, "carnivore" => true, "habitat" => "land" },
  { "name" => "Elephant Seal", "weight" => 4000, "carnivore" => true, "habitat" => "sea" },
  { "name" => "Blue Whale", "weight" => 140000, "carnivore" => false, "habitat" => "sea" },
  { "name" => "Elephant", "weight" => 6000, "carnivore" => false, "habitat" => "land" },
]

# meat_eaters_weight = []
#
# for animal in big_animals
# if animal["carnivore"] == true
#   meat_eaters_weight << animal
# end
# end
#
# print meat_eaters_weight
#
# meat_eaters_weight.sort["weight"]
#
# print meat_eaters_weight

sorted_animals = big_animals.sort_by do |item|
    item["weight"]
end

heavy_meat_eaters = []

for animal in sorted_animals
if animal["carnivore"] == true
  heavy_meat_eaters << animal
end
end

print heavy_meat_eaters.last["name"]
