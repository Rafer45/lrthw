from_file, to_file = ARGV

File.open(to_file, 'w') { |f| f.write(File.read(to_file)) }

puts "Alright, all done."