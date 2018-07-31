# simple literal notation hash
#
# hashing = {
#     "name" => "Nestor Salinas",
#     "age" => 25,
#     "coding?"=> true
# }
#
# puts hashing["name"]
# puts hashing["coding?"]


this_other_hash = {
    name: 'This one name i came up with',
    age: 25
}

puts this_other_hash[:name]
puts this_other_hash[:age]


# creating hash with object notation
pets = Hash.new
pets["Pooka"] = "dog"
pets["Black"] = "color"
pets[3] = "age"

puts pets


# iterating through hash data sets

groceries = Hash.new
groceries["salsa"] = 1
groceries["queso"] = 2
groceries["tortillas"] = 3
groceries["cilantro"] = 4

groceries.each {|x,y| puts "#{x}: #{y}"}


