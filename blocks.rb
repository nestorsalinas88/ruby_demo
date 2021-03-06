
# def my_method(&my_block)
#   puts "we are in the method, and we need to invoke the block"
#   my_block.call
#   puts "we are back in the method after invoking block"
# end
#
#
# my_method do
#   puts "We're in the block!"
# end


# blocks can't be used solos they need a method to keep them happy
# we want the happy path


# def method(&block)
#   puts "What is your name?"
#   input = gets.chomp
#   block.call
#   puts "welcome, #{input}! You're learning about blocks!"
# end
#
# method do
#   puts "this one thing is my block"
# end


# more examples with blocks

def cell_phone(&node)

  node.call

end

cell_phone do
  puts "what is your name?"
  input = gets.chomp
  puts "welcome to your phone, #{input}"
end

cell_phone do
  puts "Do you still have storage for my app? [y/n]"
  input = gets.chomp.downcase
  if input == "y"
    puts "that is great!"
  elsif input == "n"
    puts "thats not good man!"
  else
    raise "invalid entry!"
  end
  puts "you're learning blocks bruhh!"
end

# the code in the method can stay the same the block code can change

# BLOCK PARAMS

def give(&my_block)
  my_block.call('this thing', 'that other thing')
end

give do | present1, present2 |
  puts 'my method gave me... ', present1, present2
end


# using the YIELD keyword

# def take
#   yield "papas", "tomatos"
# end
#
# take do |thing1, thing2|
#   puts "list of groceries:", thing1, thing2
# end

def this_meth
  yield 'iphone', 'galaxy droid', 'terrible device'
end

this_meth {|thing1, thing2, thing3| puts "list of electronics", thing1, thing2, thing3  }



# blocks can return values
# dont use the return keyword look to refactor and build good habits

def make_cass
  puts "preheat the oven"
  ingredients = yield
  puts "place #{ingredients}"
end

make_cass {"noodles, clereyt, food"}

make_cass {"rice,bean.pudding"}