
# sifting through a big collection of words

review_file = File.open("reviews.txt")

lines = review_file.readlines
puts "Line 4: #{lines[3]}", "line 1: #{lines[0]}"

review_file.close



# simplified version for going through collections in .txt file
contents = []

File.open("reviews.txt") do |file|
  contents = file.readlines
end

puts contents


