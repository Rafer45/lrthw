print "Give me money: "
money = gets.chomp.to_f # Gets money input

change = (money * 0.1).round(2) # Calculates change
puts "Here's some of it back: $#{change}."