

# Declaring classes

class Dog

  def bark
    puts 'woof! woof!'
  end

  def move(destination)
    puts "Running to the #{destination}!"
  end
end

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

# intances of new classes
fido = Dog.new
fido.bark

whiskers = Cat.new
whiskers.move('Mexico City')

pijin = Bird.new
pijin.fly('New York City!')


class Blender
  def clode_lid
    puts 'lid is closed'
  end
  def blend
    puts 'blending the ingredients'
  end
end

blender = Blender.new
blender.clode_lid
blender.blend
