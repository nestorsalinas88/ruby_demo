=begin
Lambdas are useful in the same situations in which you'd use a proc.

If you're thinking that procs and lambdas look super similar, that's because they are! There are only two main differences.

First, a lambda checks the number of arguments passed to it, while a proc does not. This means that a lambda will throw an error if you pass it the wrong number of arguments, whereas a proc will ignore unexpected arguments and assign nil to any that are missing.

Second, when a lambda returns, it passes control back to the calling method; when a proc returns, it does so immediately, without going back to the calling method.

To see how this works, take a look at the code in the editor. Our first method calls a proc; the second calls a lambda.
=end


def lambda_demo(a_lambda)
  puts "I'm the method!"
  a_lambda.call
end

lambda_demo(lambda { puts "I'm the lambda!" })


strings = ["leonardo", "donatello", "raphael", "michaelangelo"]

symbolize = lambda { |param| param.to_sym }



symbols = strings.collect(&symbolize)
print symbols



# passing a lambda into a method for practice
my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]

symbol_filter = lambda {|x| x.is_a? Symbol}
symbols = my_array.select(&symbol_filter)

my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]

puts symbols


# Differences between blocks, lambdas, and Procs


=begin
A block is just a bit of code between do..end or {}. It's not an object on its own, but it can be passed to methods like .each or .select.
A proc is a saved block we can use over and over.
A lambda is just like a proc, only it cares about the number of arguments it gets and it returns to its calling method rather than returning immediately.


=end

# one more example of parsing a proc to a method

ages = [23, 101, 7, 104, 11, 94, 100, 121, 101, 70, 44]

# Add your code below!
under_100 = Proc.new { |x| x < 100 }

youngsters = ages.select(&under_100)

puts youngsters


# passing a lambda into my method

# hash describe with keyvalue pairs
crew = {
    captain: "Picard",
    first_officer: "Riker",
    lt_cdr: "Data",
    lt: "Worf",
    ensign: "Ro",
    counselor: "Troi",
    chief_engineer: "LaForge",
    doctor: "Crusher"
}

# lambda being created
first_half = lambda { |x,y| y < "M"}

# lambda passed into method
a_to_m = crew.select(&first_half)

#  printing the result
puts a_to_m