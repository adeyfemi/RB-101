# Practice Problems Easy 2

# question 1

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.has_key?('Spot')
ages.include?('Spot')
ages.key?('Spot')
ages.member?('Spot')

# question 2

munsters_description = "The Munsters are creepy in a good way."

munsters_description.upcase!.gsub(/[TM]/, 'T' => 't', 'M' => 'm')
munsters_description.swapcase!
munsters_description.capitalize!
munsters_description.downcase!
munsters_description.upcase!

# question 3
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }

additional_ages = {"Marilyn" => 22, "Spot" => 237}
ages.merge!(additional_ages)

# question 4
advice = "Few things in life are as important as house training your pet dinosaur."

advice.include?('Dino')
advice.match?("Dino")

# question 5

flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]

flintstones = %w("Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles")

# question 6
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.push('Dino')
flintstones << "Dino"

# question 7
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.insert(6, "Dino", "Happy")
flintstones.push("Dino").push("Happy")
flintstones.concat(%w(Dino Happy))

# question 8
advice = "Few things in life are as important as house training your pet dinosaur."
advice.slice!("Few things in life are as important as ")
advice.slice!(0, advice.index('house')) # slice from index 0 to house index

# question 9
statement = "The Flintstones Rock!"

statement.count('t')

# question 10
title = "Flintstone Family Members"

title.center(40)




