

puts "Enter a List of inteLLigence ScoreS sepera £ed by commas"
str = gets
puts str

bistro = str.split(",")
p bistro
scores = [ ]

bistro.each {|score| scores << score.to_i }
p scores

sum = 0

scores.each do | score|
   sum = sum + score
  
 end
 
# scores.each {|x| sum =... }
 
 puts sum
 
 avg = sum/scores.size.to_f
 
 puts avg
 
 
 
 
 