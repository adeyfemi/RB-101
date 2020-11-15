CURRENT_YEAR = 2020

puts "What is your age?"
age = gets.chomp.to_i

puts "At what age would you like to retire?"
retire_age = gets.chomp.to_i

work_years_left = retire_age - age
work_year_retiring = CURRENT_YEAR + work_years_left

puts "It's #{CURRENT_YEAR}. You will retire in #{work_year_retiring}."
puts "You have only #{work_years_left} years of work to go!"

#alternative
print 'What is your age? '
current_age = gets.to_i

print 'At what age would you like to retire? '
retirement_age = gets.to_i

current_year = Time.now.year
work_years_to_go = retirement_age - current_age
retirement_year = current_year + work_years_to_go

puts "It's #{current_year}. You will retire in #{retirement_year}. "
puts  "You have only #{work_years_to_go} years of work to go!"