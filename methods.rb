
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
def multiply(x,y,z)
  product = x * y * z
  puts product
end


def divide(x,y)
  quotient =  x / y
  puts quotient
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


