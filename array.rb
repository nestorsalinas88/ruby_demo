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

# length method notifies you on the density of the array

prices = ["this",3.99, 25.00, 8.99]
puts prices.length

# class method specifies the class type
puts prices.class

# capitalize method only targets the first letter

puts prices[0].capitalize

# include? method checks the array for comparisons
puts prices.include?('this')

# looping arrays

group = ['Breanne', 'lance', 'emely', 'ben', 'emma', 'nestor']

index = 0
while index < group.length
  puts group[index]
  index += 1
end



def total(prices)
  amount = 0
  prices.each do |price|
    amount += price
  end
  amount
end

def refund(prices)
  amount = 0
  prices.each do |price|
    amount -= price
  end
  amount
end

def show_discount(prices)
  prices.each do |price|
    discount = price / 3.0
    puts format("Discount is: $%.2f",discount)
  end
end


prices = [3.99,4.99,5.99,7.99]
puts format("%.2f", total(prices))
puts format("%.2f", refund(prices))
show_discount(prices)

# .each method in action with block

['who', 'what','where','why','how'].each {|param| puts param}

