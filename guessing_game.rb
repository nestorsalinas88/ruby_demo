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



# exercise example refactor
# Get My Number Game
# Written by: Nestor!

puts "Welcome to 'Get My Number!'"

# Get the player's name, and greet them.
print "What's your name? "
input = gets
name = input.chomp
puts "Welcome, #{name}!"

# Store a random number for the player to guess.
puts "I've got a random number between 1 and 100."
puts "Can you guess it?"
target = rand(100) + 1

# Track how many guesses the player has made.
num_guesses = 0

# Track whether the player has guessed correctly.
guessed_it = false

until num_guesses == 10 || guessed_it

  puts "You've got #{10 - num_guesses} guesses left."
  print "Make a guess: "
  guess = gets.to_i

  num_guesses += 1

  # Compare the guess to the target.
  # Print the appropriate message.
  if guess < target
    puts "Oops. Your guess was LOW."
  elsif guess > target
    puts "Oops. Your guess was HIGH."
  elsif guess == target
    puts "Good job, #{name}!"
    puts "You guessed my number in #{num_guesses} guesses!"
    guessed_it = true
  end

end

# If the player didn't guess in time, show the target number.
unless guessed_it
  puts "Sorry. You didn't get my number. (It was #{target}.)"
end


