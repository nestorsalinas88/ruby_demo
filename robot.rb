
# this is a battle scene
# ready players!

class Robot
  attr_accessor :name

  def activate
    puts "#{@name} is powering up!"
  end

  def move(destination)
    puts "#{@name} walks to #{destination}"
  end
end

class TankBot < Robot
  attr_accessor :weapon

  def attack
    puts "#{@name} fires #{@weapon} !"
  end

  def move(destination)
    puts "#{@name} rolls to #{destination}"
  end
end

class SolarBot < Robot
  def activate
    puts "#{@name} deploys solar panel"
    super
  end
end

tank = SolarBot.new
tank.name = 'paco el robot'
tank.activate
tank.move('tannning station')

tank2 = TankBot.new
tank2.name = 'the killing machine'
tank2.weapon = 'laser beams!'
tank2.activate
tank2.move('colorado')
tank2.attack
