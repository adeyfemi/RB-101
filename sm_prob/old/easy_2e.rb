puts "What is your name?"
name = gets.chomp

if name[-1] == '!'
  name = name.chop
  puts "HELLO #{name.upcase}. WHY ARE YOU SCREAMING?" 
else
  puts "Hello #{name}."
end

#check the last item in the name to determine if there is an exclamation mark
#if there is an exclamation mark note then write the greeting in capital letters
#name.chop removes the last character unconditionally
#name.chomp removes the tail end of a string conditionally

#alternatives
def greeting_user
  print "What is your name? "
  name = gets.chomp
  puts name.include?('!') ? "HELLO #{name.upcase}. WHY ARE WE SCREAMING?" : "Hello #{name.capitalize}"
end

greeting_user

#alternative 2
print "What is your name? "
name = gets.chomp!

if name.reverse.start_with?('!')
  name.chop!
  puts ("hello #{name}. why are we screaming?").upcase
else
  puts "Hello #{name.capitalize}."
end