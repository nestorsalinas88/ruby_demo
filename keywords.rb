
# the 'self' keyword refers to the current object. In JS it could be considered 'this' keyword


class Device
  attr_accessor :name, :memory
  def initialize(obj_name, obj_memory)
    @name = obj_name
    @memory = obj_memory
  end
  # declaring the self keyword
  def return_self
    self
  end

end


i = Device.new("Iphone", 35)


puts i.return_self.name



# super keyword gives the child the ability to call on the parents initialize method

class ParentClass
  attr_accessor :name
  def initialize(name)
    @name = name
    puts "#{name} Checking for initialize with super keyword"
  end
  def parent_method
    puts 'just a method'
  end
end


class ChildClass < ParentClass
  def initialize(name)
    super
  end
  def sub_method
    puts "another sub method"
  end
end




sample = ChildClass.new('name here')
sample.parent_method
puts sample.name
sample.sub_method


# yield keyword

def print_block_result
  block_result = yield
  puts block_result
end

print_block_result{1 + 1}

print_block_result do
  "i am not your choosen one!"
  "i might be the one!"
end

print_block_result { " I hated Truncate!".include?("Truncated")}
