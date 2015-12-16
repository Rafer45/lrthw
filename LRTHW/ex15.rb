filename = ARGV.first

txt = open(filename) # Opens the file; stores it in a var

puts "Here's your file #{filename}:" # Says which file it's reading
puts txt.read # Reads the contents of the file and prints them to the console

txt.close