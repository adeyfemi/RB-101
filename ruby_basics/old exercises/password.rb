#ex6
PASSWORD = "SecreT"

loop do
  puts ">> Please enter your password:"
  input = gets.chomp
  break if input == PASSWORD
  puts "Invalid password!"
end

puts "Welcome!" 

#two faults with the model created:
# actual password is stored as clear text, not as encrypted form
# password the user enters is visible for shoulder surfers to see
