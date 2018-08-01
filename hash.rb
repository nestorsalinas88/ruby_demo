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


# iterating through the hash with an .each loop

groceries.each do |x,y|
  puts "#{x}: #{y}"
end


# sorting hash with .sort_by method

groceries = groceries.sort_by do | word, count|
  word
end


puts groceries

# format sequence

puts format("%12s %2i", "this is my magical number", 55)
puts format("%12s %2.2f", "this is my magical number", 55.98723)
puts format("%.2f", 3 / 4.0)
puts format("%.1f", 3 / 4.0)
puts format("%i", 3 / 4.0)
puts format("%.2f", 3 / 4)
puts format("$%.2f", 3 / 4.0)


