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
  def print_stub
    puts "Name: #{@name}"
    pay_period = (@salary / 365.0) * 14
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