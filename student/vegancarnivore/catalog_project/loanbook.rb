puts "Welcome to the Book Loaning Program!"

lines = File.readlines("booklistfile.txt")

list = []
lines.each do |line|
  title, author, loan_stat, loan_date = line.chomp.split("|")
  list << [title,author,loan_stat,loan_date]
end

puts "\nHere's the booklist:"

list.each_with_index do |book,i|
  p book
  title, author, loaned, loan_date = book
  print "#{i}  #{title}  by #{author}"
  if loaned != "Not Loaned" 
    print " - loaned to #{loaned} on #{loan_date}"
  end
  puts
end
