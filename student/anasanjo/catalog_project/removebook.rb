puts "Here, you can remove a book from your library."

loop do
 listBooks = File.readlines("BookList")

 list2 = listBooks.map {|line| line.chomp.split("|") }
 
 puts list2
 
 list2 = list2.sort_by {|x| x[0]}
puts "\n\nSorted by title"
#instead of list2.each {|book| puts book.join(" by ") }
list2.each_with_index do |book,i|
 puts "#{i}: #{book[0]} by #{book[1]} "
end

 puts "Choose a book to remove by entering its number. To quit, type 'quit'"
 str = gets.chomp
 
 break if str == "quit"
 choice = str

# Using choice, remove the row from the array.
 end