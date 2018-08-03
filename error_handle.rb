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


# raise and rescue exceptions

def first_methd
  risky_method
  puts "Ill be skipped!"
end

def risky_method
  raise "oops!"
  puts "ill be skipped"
end

begin
first_methd
rescue
  puts "rescue!!!"
end


# more on exceptions


def this_one_method
  other_method
  puts "this is my method that"
end

def other_method
  raise "Handle that will hault the method from executing"
  "Puts this is another method"
end

begin
  this_one_method
rescue
  puts " you have been rescued"
end


def drive(destination)
  if destination == "hawaii"
    raise "you can't drive to hawaii"
  end
end

begin
  drive("hawaii")
rescue => error
  puts error.message
end

class SmallOven
  attr_accessor :contents

  def turn_on
    puts "turning the oven on"
    @state = "on"
  end
  def turn_off
    puts "turning oven off"
    @state = "off"
  end

  def bake
    unless @state == "on"
      raise "you need to turn the oven on first"
    end
    if @contents == nil
      raise "there's nothing inside the oven"
    end
    "golden brown #{contents}"
  end
end


dinner = ['turkey', 'cassarole', 'pie']
oven = SmallOven.new
oven.turn_on
dinner.each do |item|
  begin
    oven.contents = item
    puts "serving #{oven.bake}"
  rescue => error
    puts "error #{error.message}"
  end
end