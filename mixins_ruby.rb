
class Steak
  include Comparable

  GRADE_SCORES = {"Prime" => 3, "Choice" => 2, "Select" => 1}
  attr_accessor :grade


  def <=>(other)
    if GRADE_SCORES[self.grade] < GRADE_SCORES[other.grade]
     return -1
    elsif GRADE_SCORES[self.grade] == GRADE_SCORES[other.grade]
     return 0
    else
      return 1
    end
  end
end



steak1 = Steak.new
steak1.grade = "Prime"

steak2 = Steak.new
steak2.grade = "Choice"

steak3 = Steak.new
steak3.grade = "Select"

puts "prime > choice: #{steak1 > steak2}"
puts "prime < select: #{steak1 < steak3}"
puts "prime == select: #{steak3 == steak3}"


# another example on Comparable Methods

class Apple
  include Comparable

  attr_accessor :weight
  def initialize(weight)
    self.weight = weight
  end

  def <=>(other)
    self.weight <=> other.weight
  end
end

granny = Apple.new(0.17)
sweet = Apple.new(0.23)
deli = Apple.new(0.32)

puts "granny > sweet"
puts "#{granny > sweet}"