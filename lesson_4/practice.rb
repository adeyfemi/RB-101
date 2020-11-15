#Selection from a string

# player_names = 'michaeljordankobebryantlebronjamesjuliusirving'
# player_vowels = ''
# counter = 0

# loop do
#   current_char = player_names[counter]

#   if 'aeiouAEIOU'.include?(current_char)
#     player_vowels << current_char
#   end

#   counter += 1
#   break if counter == player_names.size
# end

# p player_vowels

# player_names = ['michael jordan', 'lebron james', 'kobe bryant', 'julius irving']
# top_player = []
# counter = 0

# loop do
#   current_player = player_names[counter]

#   if current_player == 'kobe bryant'
#     top_player << current_player
#   end

#   counter += 1
#   break if counter == player_names.size
# end

# p top_player


# players = {
#   'mj': 23,
#   'kobe': 8,
#   'lebron': 23,
#   'shaq': 32,
#   'vince': 15
# }

# selected_players = {}
# counter = 0
# player_keys = players.keys

# loop do
#   break if counter == players.size

#   current_key = player_keys[counter]
#   current_value = players[current_key]

#   if current_value == 23
#     selected_players[current_key] = current_value
#   end

#   counter += 1
#   break if counter == players.size
# end

# p selected_players


# country_continent = {
#   'Canada': 'North America',
#   'Nigeria': 'Africa',
#   'Congo': 'Africa',
#   'Argentina': 'South America',
#   'Nigeria': 'Ghana'
# }

# selected_continents = {}
# counter = 0
# continent_keys = country_continent.keys

# loop do
#   break if counter == country_continent.size

#   current_key = continent_keys[counter]
#   current_value = country_continent[current_key]

#   if current_value == 'Africa'
#     selected_continents[current_key] = current_value
#   end

#   counter += 1
# end

# p selected_continents


#Quiz
# iterate through the items in the array
# => if integer value is odd add it to new array of odd integer strings
# => Once iteration is complete, new array should contain all odd integer strings

# numbers = ['2', '3', '5', '7', '8', '11', '13', '15', '18']
# odd_numbers = []
# number = 0

# until number == numbers.size
#   odd_numbers << numbers[number] if number.to_i.odd?

#   number += 1
# end

# p odd_numbers

# numbers = ['2', '3', '5', '7', '8', '11', '13', '15', '18']
# odd_numbers = []
# counter = 0

# loop do
#   number = numbers[counter].to_i

#   odd_numbers << numbers[counter] unless number.even?

#   counter += 1
#   break if counter == numbers.size
# end

# p odd_numbers


# numbers = ['2', '3', '5', '7', '8', '11', '13', '15', '18']
# odd_numbers = []

# numbers.each do |number|
#   odd_numbers << number if number.to_i.odd?
# end

# numbers = ['2', '3', '5', '7', '8', '11', '13', '15', '18']
# odd_numbers = []

# for number in numbers
#   if number.to_i.odd?
#     odd_numbers.push(number)
#   end
# end


# sentence = 'The sky was blue'
# change_case(sentence, :snake)

# def change_case(sentence, new_case)
#   case new_case
#   when :snake
#     snake(sentence)
#   when :camel
#     camel(sentence)
#   when :upper_snake
#     upper_snake(sentence)
#   else
#     puts 'Invalid case type'
#   end
# # end

# def snake(str)
#   words = str.split
#   current_word = 0

#   loop do
#     words[current_word].downcase!

#     current_word += 1
#     break if current_word >= words.size
#   end

#   words.join('_')
# end

# p snake(sentence)

# def camel(str)
#   words = str.split(' ')
#   counter = 0

#   while counter < words.size
#     words[counter] = words[counter].capitalize

#     counter = counter + 1
#   end

#   words.join
# end

# sentence = 'The sky was blue'
# p camel(sentence)

# def upper_snake(str)
#   words = str.split
#   current_word = 0

#   loop do
#     break if current_word == words.size
#     words[current_word].upcase!
#     current_word += 1
#   end

#   words.join('_')
# end


# sentence = 'The sky was blue'
# p upper_snake(sentence)


# foo = [1,2,3,4]

# baz = foo.each do |value|
#   value
# end

# p baz


# stars = ['Sirius', 'Rigel']

# # p stars_1.each {|item| item.upcase}


# stars_1 = ['Sirius', 'Rigel', 'Vega', 'Polaris', 'Altair']
# arr = []
# stars.each do |star|
#   arr.push(star.upcase)
# end

# p arr

# for x in stars_1
#   x.downcase
# end

# p stars_1

# counter = 0
# p stars_1[counter][0,3]


# ['a','b','c'].select do |item|
#   puts item
# end


# [1, 2, 3].map do |num|
#   num + 1
# end


# ['green'].each do |word|
#   puts word
#   word.upcase
# end


# {a:1, b: 2}.map do |_, num|
#   plus_one = num + 1
#   puts "#{num}"
# end

# flavors = ['chocolate']
# flavors.reject { |flavor| flavor}


# numbers = [1, 2, 4, 5, 7, 8, 10, 13, 14]

# even_number = []

# for number in numbers
#   next if number.odd?
#   even_number << number
# end

# p even_number

# numbers = [1, 2, 4, 5, 7, 8, 10, 13, 14]
# odd_numbers, even_numbers = numbers.partition do |number|
#                               number.even?
#                             end

# p odd_numbers

time_now = '12:25'

hours, minutes = time_now.split(':').map(&:to_i)
p hours
p minutes

people = { Kate: 27, john: 25, Mike:  18 }

new_people = people.sort_by do |name, _|
  name.capitalize
end

p new_people

