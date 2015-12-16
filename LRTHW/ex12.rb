print "Give me a number: "
number = gets.chomp.to_i             # Gets numeric input

bigger = number * 100                # Calculates a bigger number...
puts "A bigger number is #{bigger}." # ...then returns it.

print "Give me another number: "
another = gets.chomp                 # Gets another numeric input
number = another.to_i                # Stores it in the same var as before

smaller = number / 100               # Calculates a smaller number,
puts "A smaller number is #{smaller}." # Then returns it.