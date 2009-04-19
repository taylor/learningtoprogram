puts "Hello Mr. Roboto. Welcome to your library application-LIST BOOKS"
 
lines = File.readlines("BookList")
 
list = []
lines.each do |line|
  title, author, loanStatus, loanDate = line.chomp.split("|")
  list << [title,author,loanStatus,loanDate]
end
 
# the above 5 lines could also be written:
# list = listBooks.map {|line| line.chomp.split("|") }
 
puts "Unsorted list"
puts list
 
list = list.sort_by {|x| x[0]}
puts "\n\nSorted by title"
list.each_with_index do |book,i|
	puts "#{i}: #{book[0]} by #{book[1]} "
end
 
