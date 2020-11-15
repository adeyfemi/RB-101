# #question 1
# flintstones = ["Fred", "Barney","Wilma","Betty","Pebbles","BamBam"]
# count = 0

# flintstones.each_with_object({}) do |(key, value), hash|
#   break if count == flintstones.size 
#   hash[key] = count
#   count += 1
# end

# #alternative solution
# flintstones = ["Fred", "Barney","Wilma","Betty","Pebbles","BamBam"]

# flintstones_hash = {}
# flintstones.each_with_index do |name, index|
#   flintstones_hash[name] = index
# end

# p flintstones_hash

#question 2
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237}

# total_ages = 0
# ages.each do |key, value|
#   total_ages += value
# end

# total_ages = 0
# ages.each {|_, age| total_ages += age}
# p total_ages

# p ages.values.inject(:+)
# p ages.values.reduce(:+)

#question 3
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237}

over_100 = ages.select! do |key, value|
  if value < 100
    value
  end
end

p over_100

#alternative method
ages.keep_if {|_,age| age < 100}
#deletes every key-value pair from hsh for which block evaluates to false
#If no block is given, an enumerator is returned instead

#question 4
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237}

p ages.values.min

#question 5
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones_hash = {}
flintstones.each_with_index do |character, index|
  if character.include?('Be')
    flintstones_hash[character] = index
  end
end

p flintstones_hash

p flintstones.index { |name| name[0, 2] == "Be"}

#question 6
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map! do |name|
  name[0,3]
end

p flintstones

#alternative method
flintstones.map! { |name| name[0,3] }

#question 7
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

statement = "The Flintstones Rock"

statement_array = statement.each_char.to_a

statement_hash = {}
statement_array.each do |element|
  statement_hash[element] = statement.count(element)
end

p statement_hash

#alternative method
result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  result[letter] = letter_frequency if letter_frequency > 0
end

p result

#question 8

numbers = [1,2,3,4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

# "0" [1,2,3,4] "1"
# "1" [2,3,4] "3"


#for clarification
numbers = [1, 2, 3, 4]
numbers.each_with_index do |number, index|
  p "#{index}  #{numbers.inspect}  #{number}"
  numbers.shift(1)
end

#pop
numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

# "0" [1,2,3,4] "1"
# "1" [1,2,3] "2"

#question 9
words = "the flintstones rock"

capital_words = []
words.split.map do |word|
  capital_words << word.capitalize
end

p capital_words.join(' ')

#alternative method
words.split.map {|word| word.capitalize}.join(' ') 

#question 10
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |name, details|
  case details['age']
  when 0...18
    details['age_group'] = 'kid'
  when 18...65
    details['age_group'] = 'adult'
  else
    details['age_group'] = 'senior'
  end
end

  

