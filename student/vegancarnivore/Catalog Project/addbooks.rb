puts "Welcome to the Auxiliary Xanadu Edinburgh (AXE) catalog system. "


puts "Enter a book title or quit: "
newbook = gets

File.open("booklistfile.txt","w") do |f|
  f.puts newbook
end