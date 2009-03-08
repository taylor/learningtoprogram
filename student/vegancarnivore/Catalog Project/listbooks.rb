list = File.readlines("booklistfile.txt")
list2 = []
list.each do |line|
  title, author = line.chomp.split("|")
  list2 << [title,author]
end
puts list

puts "\n\nSorted by author"
list2 = list2.sort_by {|x| x[1] }
list2.each {|book| puts book.join(" by ") }

puts "\n\nSorted by title"
list2 = list2.sort_by {|x| x[0] }
list2.each {|book| puts book.join(" by ") }

