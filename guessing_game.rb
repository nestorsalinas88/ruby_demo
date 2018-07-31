# Getting user name and using string interpolation to display username

print 'Enter your first name: '
first = gets.chomp

print 'Enter your last name: '
last = gets.chomp

puts "Welcome, #{first} #{last}!"

# user has options to continue or disengage
print 'Would you like to play a game?[y/n]'
resp = gets.chomp

if resp == 'y'
  puts 'Let the games begin!'
  numb = 0
  guessed_it = false
  while numb < 10 && guessed_it == false
    puts "you have #{10 - numb} guesses left!"
    puts 'Think of a number between 1 < 10:'
    guess = gets.to_i
    numb += 1
    comp_guess = rand(10)
    if guess < comp_guess
      print 'You need to aim higher'

    elsif guess > comp_guess
      print 'you need to ain lower'
    elsif guess == comp_guess
      puts "great congrats, #{first} #{last}! "
      puts "you guessed my number in #{numb} attempts!"
      guessed_it = true
    end
  end

elsif resp == 'n'
  print "I didn't want to play anyways!"
else
  print "incorrect response! Adios!"
end


