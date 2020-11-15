#Q1
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.include?("Spot")
p ages.key?("Spot")
p ages.member?("Spot")

#Q2
munsters_description = "The Munsters are creepy in a good way."

# p munsters_description.upcase!
# p munsters_description.gsub!("THE","tHE")
# p munsters_description.gsub!("MUNSTERS", "mUNSTERS")

p munsters_description.swapcase!
p munsters_description.capitalize!
p munsters_description.downcase!
p munsters_description.upcase!


#Q3
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }

ages.merge!(additional_ages) 

#Q4
advice = "Few things in life are as important as house training your pet dinosaur."

puts advice.include?('Dino')
puts advice.match?('Dino')

#Q5
flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

#Q6
flintstones << "Dino"
flintstones.push('Dino')
# flintstones.concat('Dino')

print flintstones

#Q7
flintstones.insert(7, 'Dino', 'Hoppy')
flintstones.push("Dino").push("Hoppy")
flintstones.concat(%w(Dino Hoppy))
p flintstones

#Q8
advice = "Few things in life are as important as house training your pet dinosaur."

p advice.slice!(0, advice.index('house'))
p advice

#Q9
statement = "The Flintstones Rock!"

p statement.count('t')

#q10
title = "Flintstones Family Members"

title.center(40)





