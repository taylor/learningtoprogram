# This line is a comment and will be ignored.  Comments start with a #
# The code below will do nothing
# puts "What is your name?"
print "What is your name? "
name = gets
name = name.chomp
puts "Hi, #{name}. How are you?"

puts "Backwards, that is: #{name.reverse}"

print "What is your age? "
age = gets.chomp
age = age.to_i
puts "You are #{age} years old!"

if age > 25
  puts "If you are a guy you can get an insurance discount!"
elsif age >= 30 and name == "Taylor"
  puts 'You would think a "grown man" would stop buildering on everything'
else
  puts "Milking your parents for all their worth are you?"
end

