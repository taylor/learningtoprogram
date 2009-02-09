# This line is a comment and will be ignored.  Comments start with a #
# The code below will do nothing
# puts "What is your name?"
print "What is your name? "
name = gets
name = name.chomp
puts "Hi, #{name}. How are you?"

puts "Backwards, that is: #{name.reverse}"
