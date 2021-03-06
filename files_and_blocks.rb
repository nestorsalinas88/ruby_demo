
# opening a big collection stored in .txt file

review_file = File.open("reviews.txt")

lines = review_file.readlines
puts "Line 4: #{lines[3]}", "line 1: #{lines[0]}"

review_file.close



# simplified version for opening collections in .txt file
contents = []

File.open("reviews.txt") do |file|
  contents = file.readlines
end

# iterating through collection using .each method to find specified string in .txt file

# relevant_lines = []
# contents.each do |line|
#   if line.include?("Chicago")
#     relevant_lines << line
#     end
# end
# puts relevant_lines

# iterating through collection using find_all method

relevant_lines = lines.find_all {|line| line.include?("Chicago")}
reviews = relevant_lines.reject { |line| line.include?("--")}

adjectives = reviews.map do |review|
  adjective = find_adjective(review)
  "#{adjective.capitalize}"
end
puts relevant_lines
puts adjectives



# method to find adjective

def adj(str)
  words = str.split(" ")
  index = words.find_index("is")
  words[index + 1]
end
