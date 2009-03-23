puts "Welcome to the Book Loaning Program."

loop do
 listBooks = File.readlines("BookList")

 list2 = listBooks.map {|line| line.chomp.split("|") }
 
 puts list2
 
 list2 = list2.sort_by {|x| x[0]}
puts "\n\nSorted by title"
list2.each {|book| puts book.join(" by ") }

 puts "Choose a book to loan by entering its number. To quit, type 'quit'"
 str = gets.chomp
 
 break if str == "quit"
 choice = str
 end