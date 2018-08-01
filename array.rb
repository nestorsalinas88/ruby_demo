# creating arrays and iterating through data
# my_array = [1,2,3,4,5,6,7,8,9]
#
# print my_array

company_staff = ['monica', 'lance', 'emely', 'ben', 'emma', 'nestor']

puts company_staff[0]


employee_list = [['Lance Strong', 32, 'lance@gmail.com', '123 this address', true], ['Nestor Salinas', 25, 'nestor@gmail.com', '321 other address', false], ['Eme Awesome', 21, 'em@gmail.com', '672 this other', true]]



# what is the difference between these methods? (come back!)
employee_list.each {|item| puts item}


employee_list.each do |sub_array|
  sub_array.each {|item| puts item}
end




fruit_string = "boulder, apple, banana, peach, cow"

# split method to convert string into Array
fruit = fruit_string.split(",")
puts fruit

# pop method removes the last item from array
fruit.pop
puts fruit


# shift removes first item from array
fruit.shift
puts fruit

# join method turns an array into a string
puts fruit.join(", ")


# splat method can receive one or more arguments

def this_method(greeting, *workers)
  workers.each do |workers|
    puts "#{greeting}, #{workers}!!"
  end
end

this_method("Howdy!!", 'ean','ben', 'peter')



