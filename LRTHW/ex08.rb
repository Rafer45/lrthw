# Initializes formatter variable as an format for future strings
formatter = "%{first} %{second} %{third} %{fourth}"

puts formatter % {first: 1, second: 2, third: 3, fourth: 4} # Inputs 1, 2, 3 and 4 to the formatter and prints them with a new line.
puts formatter % {first: "one", second: "two", third: "three", fourth: "four"} # Same as above with one, two, three and four.
puts formatter % {first: true, second: false, third: true, fourth: false} # Same, but with alternating booleans
puts formatter % {first: formatter, second: formatter, third: formatter, fourth: formatter} # same, but with the formatter itself as input. Trippy.

puts formatter % { # Same as above, but with longer strings in a way that looks nicer.
	first: "I had this thing.",
	second: "That you could type up right.",
	third: "But it didn't sing.",
	fourth: "So I said goodnight."
}