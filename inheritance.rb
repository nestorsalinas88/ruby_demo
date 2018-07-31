# sample code to practice inheritance
class Animal

  attr_reader :name, :age

  def name=(value)
    if value == ""
      raise "Name can't be blank!"
    end
    @name = value
  end

  def age=(value)
    if value < 0
      raise "An age of #{value} isn't valid!"
    end
    @age = value
  end

  def talk
    puts "#{@name} says Bark!"
  end

  def move(destination)
    puts "#{@name} runs to the #{destination}."
  end

  def report_age
    puts "#{@name} is #{@age} years old."
  end

end

class Dog < Animal
  def to_s
    "#{@name} the dog, age #{age}"
  end
end

class Cat < Animal
  def talk
    puts "#{@name} says Meow!"
  end
end

class Bird < Animal
  def talk
    puts "#{@name} says Chirp! Chirp!"
  end
end

class Armadillo < Animal

  def move(destination)
    puts "#{@name} unrolls!"
    super
  end

end

whiskers = Cat.new
whiskers.name = "Whiskers"
fido = Dog.new
fido.name = "Fido"
polly = Bird.new
polly.name = "Polly"

polly.age = 2
polly.report_age
fido.move("yard")
whiskers.talk

dillon = Armadillo.new
dillon.name = "Dillon"
dillon.move("burrow")

lucy = Dog.new
lucy.name = "Lucy"
lucy.age = 4
rex = Dog.new
rex.name = "Rex"
rex.age = 2
puts lucy, rex

# another example

class Vehicle

  attr_accessor :odometer
  attr_accessor :gas_used

  def accelerate
    puts "Floor it!"
  end

  def sound_horn
    puts "Beep! Beep!"
  end

  def steer
    puts "Turn front 2 wheels."
  end

  def mileage
    return @odometer / @gas_used
  end

end

class Car < Vehicle
end

class Truck < Vehicle
  attr_accessor :cargo

  def load_bed(contents)
    puts "Securing #{contents} in the truck bed."
    @cargo = contents
  end
end

class Motorcycle < Vehicle
  def steer
    puts "Turn front wheel."
  end
end

truck = Truck.new
truck.accelerate
truck.steer

car = Car.new
car.odometer = 11432
car.gas_used = 366

puts "Lifetime MPG:"
puts car.mileage

truck = Truck.new
truck.load_bed("259 bouncy balls")
puts "The truck is carrying #{truck.cargo}."

motorcycle = Motorcycle.new
motorcycle.steer
motorcycle.accelerate

# one more for the inheritance!

class Rectangle
  attr_accessor :width, :height

  def width=(val)
    if val < 0
      raise "Width can't be negative! "
    end
    @width = val
  end

  def height=(val)
    if value < 0
      raise "height can't be negative"
    end
    @height = val
  end

  def area
    width * height
  end

end

class Square < Vehicle

end

square = Square.new
square.width= 20
square.height = 20
square.area

