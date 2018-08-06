
# building methods

# car class
def accelerate
  puts 'speeding up'
  puts 'Step on gas'
end

def sound_horn
  puts 'beep beep'
  puts 'pressing the horn '
end

def use_headlights(brightness)
  puts "turning on #{brightness} headlights"
  puts 'watch the road!'
end


# math
def multiply x,y,z
  product = x * y * z
  puts product
end


def divide x,y
  quotient =  x / y
  puts quotient
end

def function arg1 =2 , arg2 =4
   arg1 + arg2
end

def add(x,y,z)
  sum = x + y + z
  puts sum
end


def sub(x,y)
  remainder = x - y
  puts remainder
end


# method callback
sound_horn
accelerate
use_headlights('neon-blue')

#more callbacks
multiply(5,5,5)

divide(35,5)

add(40,40,40)

sub(35,5)

# factorial methods are universal to OOP

# initialize methods subclass < super class

class Person
  attr_accessor :name, :age
  def initialize(object_name, object_age)
    @name = object_name
    @age = object_age
  end
end

# instantiating class
peepz1 = Person.new('john doe', 46)
peepz2 = Person.new('vanessa', 33)
peepz3 = Person.new('gilbert', 12)


puts peepz1.name, peepz2.name, peepz3.name
puts peepz1.age, peepz2.age, peepz3.age


5.downto(1) do |x|
  puts x
  puts "take off" if x == 1
end

4.downto(-3) do |x|
  puts x
  puts "this is 0" if x == 0
end