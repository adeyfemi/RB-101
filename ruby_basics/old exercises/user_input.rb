#ex 1
puts "Type anything you want:"
input = gets.chomp
puts input

#ex 2
puts ">> What is your age in years?"
age = gets.chomp.to_i
puts "You are #{age*12} months old."

#alternative
puts '>> What is your age in years?'
age_in_years = gets
age_in_months = 12 * age_in_years.to_i
puts "You are #{age_in_months} months old"

#ex 3
puts '>> Do you want to print something? (y/n)'
input = gets.chomp
if input == 'y' || input == 'Y'
  puts 'something'
end

#alternative - allows you to input capital letter that changes to downcase
puts '>> Do you want to print something? (y/n)'
input = gets.chomp.downcase
if input == 'y'
  puts 'something'
end

#ex 4
loop do
puts '>> Do you want to print something? (y/n)'
input = gets.chomp.downcase
break if input == 'y' || input == 'n'
puts "Invalid input! Please enter y or n"
end
puts 'something' if input == 'y'

#alternative
choice = nil
loop do
  puts '>> Do you want me to print something? (y/n)'
  choice = gets.chomp.downcase
  break if %w(y n).include?(choice)
  puts '>> Invalid input! Please enter y or n'
end
puts 'something' if choice == 'y'







