puts "Hello Mr. Roboto. Welcome to your library application."
 
listBooks = File.new("BookList", "a")
 
loop do
  puts "Enter book title. To quit, type 'blueberry jam'"
  str = gets.chomp
  
  break if str == "blueberry jam"
  title = str
  
  puts "What is the author of #{title}?"
  author = gets.chomp
  
  loanStatus = str == "Not loaned", loanDate = str == ""
  listBooks.puts "#{title}|#{author}|#{loanStatus}|#{loanDate}"
end
 
listBooks.close