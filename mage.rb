class Mage

  attr_accessor :name, :spell, :damage
  def enchantant(target, target_health)
    target_health =  target_health.to_i - damage
    puts "#{@name} casts #{@spell} on #{target}!"
    puts "#{target_health} life remainding "
  end

end

caster = Mage.new
caster.name = 'Dark Magician'
caster.spell = 'Dark spell'
caster.damage = 50
caster.enchantant('My coffee', 100)



# more practice with attribute accessor methods

class Roboto
  def head
    @head
  end

  def arms=(value)
    @arms = value
  end

  attr_reader :legs, :body

  attr_writer :eyes

  attr_accessor :feet

  def assemble
    @legs = "rubyTek Walkers"
    @body = "burleybot frame"
    @head = "super AI"
  end

  def diagnose
    puts @arms
    puts @eyes
  end

end

roboto = Roboto.new
roboto.assemble
roboto.arms = 'MagGrip Claws'
roboto.eyes = 'this thing Claws'
roboto.feet = 'this thing Claws'

puts roboto.head
puts roboto.legs
puts roboto.body
puts roboto.feet
puts roboto.diagnose


