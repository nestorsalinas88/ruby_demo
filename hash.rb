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


# creating hash with constructor notation
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


# @work


this = {name: 'bob',
occupation: 'Dev Ops',
age: 34}

p this




# symbols
# :symbol

strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]
symbols = []

strings.each do |s|
  symbols.push(s.to_sym)
end
print symbols

# .intern method to turn strings into symbols

one_thing = "hello".intern

p one_thing



movie_ratings = {
    memento: 3,
    primer: 3.5,
    the_matrix: 5,
    truman_show: 4,
    red_dawn: 1.5,
    skyfall: 4,
    alex_cross: 2,
    uhf: 1,
    lion_king: 3.5
}

good_movies = movie_ratings.select { |name, rating| rating > 3 }

p good_movies


# printing out keys only using .each_key method
movie_ratings = {
    memento: 3,
    primer: 3.5,
    the_matrix: 3,
    truman_show: 4,
    red_dawn: 1.5,
    skyfall: 4,
    alex_cross: 2,
    uhf: 1,
    lion_king: 3.5
}
# Add your code below!

movie_ratings.each_key { |k,v| puts k }



# passing hash as method parameters

def volume(opt)
  opt[:width] * opt[:height] * opt[:depth]
end

result = volume(width: 10, height: 5, depth: 2.5)

puts "volume is: #{result}"

# passing hash params to class object

class Shark
  attr_accessor :name, :color, :type, :location
  def initialize(name, color: nil, type: nil, location: nil)
    self.name = name
    self.color = color
    self.type = type
    self.location = location
  end
end

p Shark.new('hammer-head', color: 'blue', type: 'great', location: 'netherlands')