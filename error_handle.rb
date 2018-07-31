class Dog
  # attribute reader method GETS value of instance variable
  attr_reader :name, :age, :color

  # attribute writer method SETS instance variables
  def name=(val)
    if val == ""
      # data validation
      raise 'name can\'t be empty!'
    else
      @name = val
    end
  end

  def age=(val)
    if val < 0
      raise " #{val} isn't a valid age!"
    else
      @age = val
    end
  end
  def color=(val)
    if val == ""
      raise "#you need to select a color!"
    else
      @color = val
    end
  end

  def report
    puts "#{@name} is #{@age} years old! She is a #{@color} color"
  end

end


pooka = Dog.new
pooka.name = "Pooka"
pooka.age = 3
pooka.color = 'black'
pooka.report