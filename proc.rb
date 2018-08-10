def greeter
  yield
end

phrase = Proc.new { puts "Hello there!" }

greeter(&phrase)



def name
  yield
end


this = Proc.new {puts "my name is Nestor!"}

name(&this)

=begin
Why bother saving our blocks as procs? There are two main advantages:

Procs are full-fledged objects, so they have all the powers and abilities of objects. (Blocks do not.)
Unlike blocks, procs can be called over and over without rewriting them. This prevents you from having to retype the contents of your block every time you need to execute a particular bit of code.
=end

test = Proc.new { puts "this method call for proc " }
  test.call
# does that something!