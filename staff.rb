class Staff
  # attribute accessor methods reduce the amount of code needed
  attr_accessor :name , :age

  def report
    puts "#{@name} is #{@age} years old"
  end
end


nestor = Staff.new
nestor.name = 'Nestor Salinas'
nestor.age = 25

lance = Staff.new
lance.name = 'Lance!'
lance.age = 32

nestor.report
lance.report

