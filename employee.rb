class Employee
  attr_reader :name, :salary

  def name=(name)
    if name == ""
      raise "Name can't be blank "
    end
    @name = name
  end

  def salary=(salary)
    if salary < 0
      raise "a salary of #{salary} isn't valid!"
    end
    @salary = salary
  end
  def initialize(name = "anon", salary = 0.0)
    self.name = name
    self.salary = salary
  end
  def print_stub
    # inspecting for NIL value
    # p @salary, @name



    puts "Name: #{@name}"

    # when diving make sure to use at least one FLOAT
    pay_period = (@salary / 365.0) * 14
    # format sequence to remove extra decimal places
    pay_period = format("%0.2f", pay_period)
    puts "pay for this period was $#{pay_period}"
  end
end

# parameters in initializing method
dorian = Employee.new("this guy", 40000)
dorian.print_stub


sandra = Employee.new("cole brown", 40000)
sandra.print_stub


empty = Employee.new("amy",50000)
empty.print_stub

this = Employee.new("This other dude", 34000.00)
this.print_stub

class Car
  def initialize(engine)
    @engine = engine
  end
  def rev_engine
    @engine.make_sound
  end
end

class Engine
  def initialize(sound = "VrooM!!")
    @sound = sound
  end

  def make_sound
    puts @sound
  end
end

#
# enigne = Engine.new
# car = Car.new(enigne)
# car.rev_engine


# self keyword

# class MyClass
#   def first_method
#     puts "current instance method #{self}"
#   end
# end
#
# object = MyClass.new
# puts "my object #{object}"
# object.first_method