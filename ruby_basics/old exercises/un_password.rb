#ex7
UN = "adeyfemi"
PASS = "2115femi"

loop do
  puts "Please enter user name:"
  username = gets.chomp
  puts "Please enter your password:"
  password = gets.chomp
  break if username == UN && password == PASS
  puts "Authorization failed!"
end

puts "Welcome!"

#to avoid case sensitive inputs put in .downcase method