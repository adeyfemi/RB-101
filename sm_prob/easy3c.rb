#Counting the Numbers of Characters
def prompt(message)
  puts "#{message}"
end

prompt("Please write word or multiple words:")
word = gets.chomp

character_count = word.delete(' ').size

prompt("There are #{character_count} characters in \"#{word}\".")

