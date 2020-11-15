#Greeting a user

puts "=> What is your name?"
name = gets.chomp

if name.include?("!")
  name = name.chop
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end

#alternative solution
print 'What is your name? '
name = gets.chomp

if name[-1] == '!'
  name = name.chop
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end

#Two methods are used - String#chomp removes the tail end of a string
# => String#chop removes the last character unconditionally.