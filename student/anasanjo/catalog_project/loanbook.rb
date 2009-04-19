puts "Welcome to the Book Loaning Program."

books = {}

loop do										#starts a loop
 listBooks = File.readlines("BookList") #variable listBooks = the lines of BookList

 list2 = listBooks.map {|line| line.chomp.split("|") }	#variable list2 = BookList separated by | and given new lines
#list2.each_with_index do |book,i|
#end
#books[i] = {title, author, loanStatus, loanDate}

 puts list2
 
 list2 = list2.sort_by {|x| x[0]}						#list2 is now sorted by first elements
puts "\n\nSorted by title"
#instead of list2.each {|book| puts book.join(" by ") }
list2.each_with_index do |book,i|
 puts "#{i}: #{book[0]} by #{book[1]} "
end

 puts "Choose a book to loan by entering its number. To quit, type 'quit'"
 str = gets.chomp
 
 break if str == "quit"
 choice = str
 
 #bookSelected = books[choice.to_i[0]]
 #puts bookSelected
 
 #list2.each do |book|
  #puts "#{choice}: #{book[0]} by #{book[1]}"
 #end
 
  # using choice, select loanStatus element, or element 2 of that array row, and changed to Loaned.
  # how can i do this... ?
  
 end