def prompt(message)
  Kernel.puts(message)
end

prompt('Please write a word or multiple words:')
input = gets.chomp
number_of_characters = output.delete!(' ').size
puts "There are #{number_of_characters} characters in \"#{input}\"."

# to use delete the word must be string format and not in an array.


