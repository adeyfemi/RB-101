#When will I Retire?

CURRENT_YEAR = 2020
current_year = Time.now.year

puts "=> What is your age?"
age = gets.chomp.to_i

puts "=> At what age would you like to retire?"
retire_age = gets.chomp.to_i

years_left = retire_age - age
retire_year = CURRENT_YEAR + (retire_age - age)


puts "=> It's #{CURRENT_YEAR}. You will retire in #{retire_year}."
puts "=> You have only #{years_left} years of work to go!"

