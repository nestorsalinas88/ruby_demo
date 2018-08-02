class MyClass
  def self.my_class_method(p1,p2)
    puts "hello from my class"
    puts "my params are: #{p1}, #{p2}"
  end
end

MyClass.my_class_method(1,2)



class Avatar
  def self.add(x,y,z)
    total = x + y + z
    puts "this is the total #{total}"
  end
end

Avatar.add(3,3,3)

# more ClassMethods practice

class Dude
  # class attributes @@
  # example of seperation of concerns
  @@count = 0
  attr_accessor :name, :age
  def initialize(obj_name, obj_age)
    @name = obj_name
    @age = obj_age
    @@count +=1
  end
  def self.how_many
    @@count
  end
end


Dude.new('john', 20)
Dude.new('luke',25)
Dude.new('luke',25)

puts Dude.how_many
