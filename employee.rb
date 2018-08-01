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



    puts "Name: #{name}"

    # when diving make sure to use at least one FLOAT
    pay_period = (salary / 365.0) * 14
    # format sequence to remove extra decimal places
    pay_period = format("%0.2f", pay_period)
    puts "pay for this period was $#{pay_period}"
  end
end

# parameters in initializing method
Employee.new("this guy", 40000).print_stub


Employee.new("cole brown", 40000).print_stub


Employee.new("amy",50000).print_stub

Employee.new("This other dude", 34000.00).print_stub

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


# refctoring Employee Class

class Employee
  attr_reader :name
  def name=(name)
    if name == ""
      raise "Name can't be blank!"
    end
    @name = name
  end
  def initialize(name = "Anonymous")
    self.name = name
  end
  def print_name
    puts "Name: #{name}"
  end

end

class SalariedEmployee < Employee

  attr_reader :salary
  def salary=(salary)
    if salary < 0
      raise "A salary of #{salary} isn't valid!"
    end
    @salary = salary
  end
  def initialize(name = "Anonymous", salary = 0.0)
    super(name)
    self.salary = salary
  end
  def print_pay_stub
    print_name
    pay_for_period = (salary / 365.0) * 14
    formatted_pay = format("$%.2f", pay_for_period)
    puts "Pay This Period: #{formatted_pay}"
  end
end
class HourlyEmployee < Employee
  def self.security_guard(name)
    HourlyEmployee.new(name, 19.25, 30)
  end
  def self.cashier(name)
    HourlyEmployee.new(name, 12.75, 25)
  end
  def self.janitor(name)
    HourlyEmployee.new(name, 10.50, 20)
  end
  attr_reader :hourly_wage, :hours_per_week
  def hourly_wage=(hourly_wage)
    if hourly_wage < 0
      raise "An hourly wage of #{hourly_wage} isn't valid!"
    end
    @hourly_wage = hourly_wage
  end
  def hours_per_week=(hours_per_week)
    if hours_per_week < 0
      raise "#{hours_per_week} hours per week isn't valid!"
    end
    @hours_per_week = hours_per_week
  end
  def initialize(name = "Anonymous", hourly_wage = 0.0, hours_per_week = 0.0)
    super(name)
    self.hourly_wage = hourly_wage
    self.hours_per_week = hours_per_week
  end
  def print_pay_stub
    print_name
    pay_for_period = hourly_wage * hours_per_week * 2
    formatted_pay = format("$%.2f", pay_for_period)
    puts "Pay This Period: #{formatted_pay}"
  end
end
jane = SalariedEmployee.new("Jane Doe", 50000)
jane.print_pay_stub
angela = HourlyEmployee.security_guard("Angela Matthews")
ivan = HourlyEmployee.cashier("Ivan Stokes")
angela.print_pay_stub
ivan.print_pay_stub



class Boat
  def initialize(name)
    @name = name
  end
end

class PowerBoat < Boat
  def initialize(name, motor_type)
    super(name)
    @motor_type = motor_type
  end

  def info
    puts "name: #{@name}"
    puts "Motor type: #{@motor_type}!"
  end
end

PowerBoat.new("JET300", "350X").info