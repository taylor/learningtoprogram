puts "Welcome to the Book Loaning Program"

lines = File.readlines("booklistfile.txt")

list = []
lines.each do |line|
  title, author, loan_stat, loan_date = line.chomp.split("|")
  list << [title,author,loan_stat,loan_date]
end

puts "\nHere's the booklist:"

list.each do |book|
  if book[2] == "Not Loaned"
    s = "#{book[0]} by #{book[1]} currently #{book[2]}"
  else
    s = "#{book[0]} by #{book[1]} currently #{book[2]}"
  end
  puts s
end