class Dog
  attr_accessor :name, :age, :color

  def name=(val)
    if val == ""
      puts 'name can\'t be empty!'
    else
      @name = val
    end
  end

  def age=(val)
    if val < 0
      puts " #{val} isn't a valid age!"
    else
      @age = val
    end
  end

  def report
    puts "#{@name} is #{@age} years old!"
  end

end


pooka = Dog.new
pooka.name = ""
pooka.age = -2
pooka.report