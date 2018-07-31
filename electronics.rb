# inheritance OOP and keyword SUPER


class Electronic
  attr_reader :name, :memory, :year_released
  def name=(val)
    if val == ""
      raise 'You have not selected a device!'
    end
    @name = val
  end
  def memory=(val)
    if val < 1
      raise 'not enough memory!'
    end
    @memory = val
  end

  def year_released=(val)
    if val < 2018
      raise 'you need an update'
    end
    @year_released = val
  end

  def action
    total = year_released - 2018
    puts "Your #{@name} device is #{total} years old, and it has #{@memory}% memory left "
  end

end


class Iphone < Electronic
  def action
    super
    puts 'you awesome'
  end
end

class MAC < Electronic

end

class Android < Electronic

end


x = Iphone.new
x.name = "nestor's Iphone"
x.memory = 3
x.year_released = 2018
x.action