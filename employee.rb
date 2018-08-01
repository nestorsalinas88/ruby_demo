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
  def initialize
    @name = "Anon"
    @salary = 0.0
  end
  def print_stub
    # inspecting for NIL value
    p @salary, @name
    puts "Name: #{@name}"
    # LOOK RIGHT HEE
    # when diving make sure to use at least one FLOAT
    pay_period = (@salary / 365.0) * 14
    # format sequence to remove extra decimal places
    pay_period = format("%0.2f", pay_period)
    puts "pay for this period was $#{pay_period}"
  end
end

dorian = Employee.new
dorian.name = "Dorian Sanchez"
dorian.salary = 41450
dorian.print_stub



sandra = Employee.new
sandra.name = "Sandra Tolumerke"
sandra.salary = 100000
sandra.print_stub


empty = Employee.new
empty.print_stub
