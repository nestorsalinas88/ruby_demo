class Dog

  def bark
    puts 'woof! woof!'
  end

  def move(destination)
    puts "Running to the #{destination}!"
  end
end

# Declaring classes with instance methods
class Cat
  def meow
    puts 'meow!'
  end

  def move(destination)
    puts "The cat is going to #{destination}"
  end
end

class Bird
  def talk
    puts 'chirp! chirps! '
  end

  def fly(destination)
    puts "The bird flew to #{destination}"
  end
end

fido = Dog.new
fido.bark

whiskers = Cat.new
whiskers.move('Mexico City')
