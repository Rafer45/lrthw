# Start of word and sentence module exercise

module Ex26

  # This function breaks a sentence up into words.
  def Ex26.break_words(sentence)
    words = sentence.split(' ')
    return words
  end

  # Sorts the words.
  def Ex26.sort_words(words)
    return words.sort
  end

  # Prints the first word after shifting it off.
  def Ex26.print_first_word(words)
    word = words.shift
    puts word
  end

  # Prints the last word after popping it off.
  def Ex26.print_last_word(words)
    word = words.pop
    puts word
  end

  # Takes in a full sentence and returns its sorted words.
  def Ex26.sort_sentence(sentence)
    words = Ex26.break_words(sentence)
    return Ex26.sort_words(words)
  end

  # Prints the first and last words of the sentence.
  def Ex26.print_first_and_last(sentence)
    words = Ex26.break_words(sentence)
    Ex26.print_first_word(words)
    Ex26.print_last_word(words)
  end

  # Sorts the words then prints the first and last one.
  def Ex26.print_first_and_last_sorted(sentence)
    words = Ex26.sort_sentence(sentence)
    Ex26.print_first_word(words)
    Ex26.print_last_word(words)
  end

end

# End of word and sentence module exercise

####################

# Start of secret formula exercise

puts "Let's practice everything."
puts 'You\'d need to know \'bout escapes with \ that do \n newlines and \t tabs.'

poem = <<END
\tThe lovely world
with logic so firmly planted
cannot discern \n the needs of love
nor comprehend passion from intuition
and requires an explanation
\n\t\twhere there is none.
END

puts "--------------"
puts poem
puts "--------------"


five = 10 - 2 + 3 - 6
puts "This should be five: #{five}"

def secret_formula(started)
  jelly_beans = started * 500
  jars = jelly_beans / 1000
  crates = jars / 100
  return jelly_beans, jars, crates
end


start_point = 10000
beans, jars, crates = secret_formula(start_point)

puts "With a starting point of: #{start_point}"
puts "We'd have #{beans} beans, #{jars} jars, and #{crates} crates."

start_point = start_point / 10

# End of secret formula exercise

####################

# Start of module test

sentence = "All good things come to those who wait."
words = Ex26.break_words(sentence)
sorted_words = Ex26.sort_words(words)
Ex26.print_first_word(words)
Ex26.print_last_word(words)
Ex26.print_first_word(sorted_words)
Ex26.print_last_word(sorted_words)
sorted_words = Ex26.sort_sentence(sentence)
Ex26.print_first_and_last(sentence)
Ex26.print_first_and_last_sorted(sentence)

# End of module test