puts "Hello Mr. Roboto. Welcome to your library application.  LIST BOOKS"

listBooks = File.readlines("BookList")

list2 = []
listBooks.each do |line|
  title, author = line.chomp.split("|")
  list2 << [title,author]
end

# the above 5 lines could also be written:
# list2 = listBooks.map {|line| line.chomp.split("|") }

puts "Unsorted list"
puts list2

list2 = list2.sort_by {|x| x[1]}
puts "\n\nSorted by author"
list2.each_with_index {|book,i| puts "Book  #{i}: " + book.join(" by ") }

list2 = list2.sort_by {|x| x[0]}
puts "\n\nSorted by title"
list2.each {|book| puts book.join(" by ") }


