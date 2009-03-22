puts "Welcome to the Auxiliary Xanadu Edinburgh (AXE) catalog system. "

loop do
  puts "Enter a book title or quit: "
  title = gets.chomp

  break if title == "quit"
  puts "Enter author's name: "
  author = gets.chomp

  loan_stat = "Not Loaned"
  File.open("booklistfile.txt","a") do |f|
    f.puts "#{title}|#{author}|#{loan_stat}|#{{Date.today}}"
  end
end