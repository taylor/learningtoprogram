puts "Welcome to the Book Loaning Program!"

lines = File.readlines("booklistfile.txt")

list = []
lines.each do |line|
  title, author, loan_stat, loan_date = line.chomp.split("|")
  list << [title,author,loan_stat,loan_date]
end

puts "\nHere's the booklist:"

list.each_with_index do |book,i|
  #p book
  title, author, loan_stat, loan_date = book
  puts "#{i}  #{title} by #{author} -Currently #{loan_stat}-"
  if loan_stat != "Not Loaned" 
    print " - loaned to #{loan_stat} on #{loan_date}"
  end
end

puts "What is the corresponding number of the book you would like to loan?"
loan_book_i = gets.to_i

puts "Whom is the book being loaned to?"
loaned_to = gets.chomp

file.open("booklistfile.txt","a") do |f|
  

