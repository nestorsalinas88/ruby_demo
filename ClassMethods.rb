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

