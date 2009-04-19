puts "Welcome to the Remove Book Program"

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
  puts "#{i+1}  #{title} by #{author} -Currently #{loan_stat}-"
  if loan_stat != "Not Loaned" 
    print " - currently #{loan_stat} on #{loan_date}"
  end
end

puts "\n\nWhat is the corresponding number of the book you would like to remove?"
remove_book = gets.to_i - 1

list.delete_at(remove_book)

File.open("booklistfile.txt","w") do |f|
  list.each do |b|
  f.puts "#{b[0]}|#{b[1]}|#{b[2]}|#{b[3]}"
  end
end

