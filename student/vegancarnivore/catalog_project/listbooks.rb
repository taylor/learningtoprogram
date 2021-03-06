lines = File.readlines("booklistfile.txt")

list = []
lines.each do |line|
  title, author,loan_stat,loan_date = line.chomp.split("|")
  list << [title,author,loan_stat,loan_date]
end


# lines above *could* be written simply as:
# list = lines.map {|line| line.chomp.split("|") }

puts lines

puts "\n\nSorted by title"
list = list.sort_by do |x|
   key = x[0].dup
   if key.index("A ") == 0
     key.sub!("A ","")
   elsif key.index("The ") == 0
     key.sub!("The ","")
   end
   key
end

list.each do |book|
  if book[2] == "Not Loaned"
    s = "#{book[0]} by #{book[1]}"
  else
    s = "#{book[0]} by #{book[1]} currently #{book[2]}"
  end
  puts s
end

