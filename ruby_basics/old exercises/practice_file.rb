# # # # automobile = {
# # # #   car:   { type: 'sedan', color: 'blue', year: 2003 },
# # # #   truck: { type: 'pickup', color: 'red', year: 1998 }
# # # # }

# # # # car = [[:type,'sedan'],[:color,'blue'],[:year,2003]]


# # # # puts automobile[:car]
# # # # puts car[0]

# # # # example = [1,2,3]
# # # # puts example.inject(:+)


# # # # valid_moves = {
# # # #   rock: ['scissors','lizard'],
# # # #   paper: ['rock','spock'],
# # # #   scissors: ['paper','lizard'],
# # # #   lizard: ['paper','spock'],
# # # #   spock: ['rock','scissors']
# # # # }

# # # # puts valid_moves[:rock]



# # # # response = Kernel.gets().chomp()
# # # # response = Kernel.gets.chomp
# # # # response = gets.chomp


# # # # a = 2
# # # # b = rand(2)
# # # # a *= b

# # # # if a == 2
# # # #   puts 'Two'
# # # # else
# # # #   puts 'Not Two'
# # # # end


# # # # num = 8

# # # # if num >=8 && num < 6 || num > 4
# # # #   puts 'Goodbye'
# # # # end

# # # # num = 12

# # # # if num >= 8 && num < 6 || num > 4 && num < 16
# # # #   puts 'Hello'
# # # # end


# # # # word_s = 'Given a sentence made up of several words.'

# # # # def longest_word(sentence)
# # # #   words = sentence.split
# # # #   saved_word = words.shift

# # # #   words.each do |word|
# # # #     if word.length >= saved_word.length
# # # #       saved_word = word
# # # #     end
# # # #   end

# # # #   saved_word
# # # # end

# # # # longest_word(word_s)

# # # # def extend_greeting(greeting)
# # # #   greeting << " there"
# # # # end

# # # # greeting = "hi"
# # # # puts extend_greeting(greeting)

# # # # puts greeting

# # # # name = "Lisa"

# # # # def name
# # # #   "George"
# # # # end

# # # # def display_name
# # # #   puts name
# # # # end

# # # # display_name

# # # # def name
# # # #   "George"
# # # # end

# # # # name = "Lisa"

# # # # def display_name(name)
# # # #   puts name
# # # # end

# # # # display_name(name)


# # # a_outer = 42
# # # b_outer = "forty two"
# # # c_outer = [42]
# # # d_outer = c_outer[0]

# # # c_outer = [44]
# # # d_outer = c_outer[0]

# # # p a_outer
# # # p b_outer
# # # p c_outer
# # # p d_outer


# # # say_hello = true
# # # count = 0

# # # while say_hello
# # #   5.times do 
# # #     puts "Hello!" 
# # #   end
# # #   say_hello = false
# # # end

# # # say_hello = true
# # # count = 0

# # # while say_hello
# # #   puts "Hello!"
# # #   count += 1
# # #   say_hello = false if count == 5
# # # end


# # # numbers = []

# # # while numbers.size < 5
# # #   numbers << rand(0..99)
# # # end

# # # p numbers


# # # count = 1

# # # until count > 10
# # #   puts count
# # #   count += 1
# # # end

# # # numbers = [7,9,13,25,18]
# # # count = 0

# # # until count == numbers.size
# # #   puts numbers[count]
# # #   count += 1
# # # end

# # # for i in 1..100
# # #   puts i if i.odd?
# # # end

# # # friends = ['Sarah', 'John', 'Hannah', 'Dave']

# # # for friend in friends
# # #   puts "Hello, " + friend + "!"
# # # end

# # # count = 1

# # # loop do
# # #   if count.odd?
# # #     puts "#{count} is odd!"
# # #   else
# # #     puts "#{count} is even!"
# # #   end
# # #   count += 1
# # #   break if count > 5
# # # end

# # # loop do
# # #   number = rand(100)
# # #   puts number
# # #   break if number.between?(0,10)
# # # end


# # # process_the_loop = [true, false].sample

# # # loop do
# # #   if process_the_loop == true
# # #     puts "The loop was processed!"
# # #   else
# # #     puts "The loop wasn't processed!"
# # #   end
# # #   break
# # # end


# # # loop do
# # #   puts "What does 2 + 2 equal?"
# # #   answer = gets.chomp.to_i
# # #   if answer == 4
# # #     puts "That's correct!"
# # #     break
# # #   else
# # #     puts "Wrong answer. Try again!"
# # #   end
# # # end

# # # numbers = []

# # # loop do
# # #   puts "Enter any number:"
# # #   input = gets.chomp.to_i
# # #   numbers << input
# # #   break if numbers.size > 5
# # # end

# # # puts numbers

# # # names = ['Sally', 'Joe', 'Lisa', 'Henry']
# # # count = 3

# # # loop do
# # #   names.each do
# # #     puts names[count]
# # #   end
# # #   names.pop
# # #   break if count == 0
# # #   count -= 1
# # # end

# # # names = ['Sally', 'Joe', 'Lisa', 'Henry']
# # # loop do
# # #   puts names.shift
# # #   break if names.empty?
# # # end


# # # names = ['Sally', 'Joe', 'Lisa', 'Henry']

# # # loop do
# # #   puts names.pop
# # #   break if names.empty?
# # # end

# # # 5.times do |num|
# # #   puts num
# # #   break if num == 2
# # # end

# # # number = 0

# # # until number == 10
# # #   number += 1
# # #   next if number.odd?
# # #   puts number
# # # end


# # # number_a = 0
# # # number_b = 0

# # # loop do
# # #   number_a += rand(2)
# # #   number_b += rand(2)
# # #   next unless number_a == 5 || number_b == 5
  
# # #   puts "5 was reached!"
# # #   break
# # # end

# # # number_a = 0
# # # number_b = 0

# # # loop do
# # #   number_a += rand(2)
# # #   number_b += rand(2)
# # #   next if number_a != 5 || number_b != 5
  
# # #   puts "5 was reached!"
# # #   break
# # # end


# # # def greeting
# # #   puts 'Hello!'
# # # end

# # # number_of_greetings = 2

# # # while number_of_greetings > 0
# # #   greeting
# # #   number_of_greetings -= 1
# # # end

# # # puts "Type anything you want:"
# # # input = gets.chomp


# # # puts "What is your age in years?"
# # # age = gets.chomp.to_i
# # # age_months = age * 12

# # # puts "You are #{age_months} months old."


# # # puts "Do you want me to print something? (y/n)"
# # # answer = gets.chomp.downcase

# # # if answer == 'y'
# # #   puts "something"
# # # end


# # # loop do
# # #   puts "Do you want me to print something? (y/n)"
# # #   answer = gets.chomp.downcase
# # #   if answer == 'y' || answer == 'n'
# # #     puts "something"
# # #     break
# # #   else
# # #     puts "Invalid input! Please enter y or n"
# # #   end
# # # end

# # # #alternative
# # # choice = nil #invoke the variable outside the loop so it is visible outside the loop
# # # loop do
# # #   puts '>> Do you want me to print something? (y/n)'
# # #   choice = gets.chomp.downcase
# # #   break if %w(y n).include?(choice)
# # #   puts '>> Invalid input! Please enter y or n'
# # # end
# # # puts 'something' if choice == 'y'

# # # input = nil

# # # loop do
# # #   loop do
# # #     puts "How many output lines do you want? Enter a number >= 3:"
# # #     input = gets.chomp.to_i
# # #     break if input >= 3
# # #     puts '>> Invalid input! please enter 3 or greater'
# # #   end
# # #   input.times do
# # #     puts "Launch School is the best!"
# # #   end
# # #   break
# # # end

# # # #alternative
# # # input = nil

# # # loop do
# # #   puts "How many output lines do you want? Enter a number >= 3:"
# # #   input = gets.chomp.to_i
# # #   break if input >= 3
# # #   puts '>> Invalid input! please enter 3 or greater'
# # # end

# # # while input > 0
# # #   puts "Launch School is the best!"
# # #   input -= 1
# # # end  


# # # PASSWORD = 'Areo#211532'

# # # loop do
# # #   puts "Please enter your password:"
# # #   answer = gets.chomp
# # #   break if answer.include?(PASSWORD)
# # #   puts "Incorrect!...Please enter the correct passowrd."
# # # end

# # # puts "Welcome!"

# # # NAME = 'Femi'
# # # PASSWORD = 'Areo#211532'

# # # loop do
# # #   puts "Please enter your name:"
# # #   name_input = gets.chomp

# # #   puts "Please enter your password:"
# # #   password_input = gets.chomp

# # #   break if name_input.include?(NAME) && password_input.include?(PASSWORD)
# # #   puts "Authorization failed."
# # # end

# # # # puts "Welcome!"


# # # def valid_number?(number_string)
# # #   number_string.to_i.to_s == number_string
# # # end

# # # numerator = nil
# # # loop do
# # #   puts "Please enter the numerator:"
# # #   numerator = gets.chomp
# # #   break if valid_number?(numerator)
# # #   puts "Please input an integer amount."
# # # end

# # # denominator = nil
# # # loop do
# # #   puts "Please enter the denominator:"
# # #   denominator = gets.chomp

# # #   if denominator == 'o'
# # #     puts "Invalid input. Pick a non-zero number"
# # #   else
# # #     break if valid_number?(denominator)
# # #     puts "Please input an integer amount."
# # #   end
# # # end

# # # result = numerator.to_i / denominator.to_i
# # # puts result

# # # loop do
# # #   input_string = nil
# # #   number_of_lines = nil

# # #   loop do
# # #     puts '>> How many output lines do you want? ' \
# # #          'Enter a number >= 3 (Q to Quit):'

# # #     input_string = gets.chomp.downcase
# # #     break if input_string == 'q'

# # #     number_of_lines = input_string.to_i
# # #     break if number_of_lines >= 3

# # #     puts ">> That's not enough lines."
# # #   end

# # #   break if input_string == 'q'

# # #   while number_of_lines > 0
# # #     puts 'Launch School is the best!'
# # #     number_of_lines -= 1
# # #   end
# # # end


# # def valid_number?(number_string)
# #   number_string.to_i.to_s == number_string && number_string.to_i != 0
# # end

# #   num_1 = nil
# #   num_2 = nil
# #   string_1 = ""
# #   string_2 = ""

# # loop do
# #   loop do
# #     puts "Please enter a positive or a negative integer:"
# #     string_1 = gets.chomp
# #     break if valid_number?(string_1)
# #     puts "Invalid input. Only non-zero integers are allowed."
# #   end

# #   num_1 = string_1.to_i

# #   loop do
# #     puts "Plese enter a positive or a negative integer:"
# #     string_2 = gets.chomp
# #     break if valid_number?(string_2) 
# #     puts "Invalid input. Only non-zero integers are allowed."
# #   end

# #   num_2 = string_2.to_i

# #   break if (num_1 > 0 && num_2 < 0) || (num_1 < 0 && num_2 > 0)
# #   puts "Sorry. One integer must be positive, one must be negative. \n>> Please start over."
# # end

# # puts num_1 + num_2

# # require "pry" 

# # counter = 0

# # loop do
# #   counter += 1
# #   break if counter == 5
# #   binding.pry
# # end

 
# # words = 'car human elephant airplane'

# # # puts words.split(' ')


# # # balance = 0

# # # # Here's what you earned and spent during the first three months.

# # # january = {
# # #   income: [ 1200, 75 ],
# # #   expenses: [ 650, 140, 33.2, 100, 26.9, 78 ]
# # # }

# # # february = {
# # #   income: [ 1200 ],
# # #   expenses: [ 650, 140, 320, 46.7, 122.5 ]
# # # }

# # # march = {
# # #   income: [ 1200, 10, 75 ],
# # #   expenses: [ 650, 140, 350, 12, 59.9, 2.5 ]
# # # }


# # # def calculate_balance(month)
# # #   plus  = month[:income].sum
# # #   minus = month[:expenses].sum

# # #   plus - minus
# # # end

# # # [january,february,march].each do |month|
# # #   balance += calculate_balance(month)
# # # end

# # # puts balance


# # colors = ['red', 'yellow', 'purple', 'green', 'dark blue', 'turquoise', 'silver', 'black']
# # things = ['pen', 'mouse pad', 'coffee mug', 'sofa', 'surf board', 'training mat', 'notebook']

# # colors.shuffle!
# # things.shuffle!

# # i = 0
# # loop do
# #   break if i > things.length - 1
# #   if i == 0
# #     puts 'I have a ' + colors[i] + ' ' + things[i] + '.'
# #   else
# #     puts 'And a ' + colors[i] + ' ' + things[i] + '.'
# #   end

# #   i += 1
# # end

  
# # Each player starts with the same basic stats.

# player = { strength: 10, dexterity: 10, charisma: 10, stamina: 10 }

# # Then the player picks a character class and gets an upgrade accordingly.

# character_classes = {
#   warrior: { strength:  20 },
#   thief:   { dexterity: 20 },
#   scout:   { stamina:   20 },
#   mage:    { charisma:  20 }
# }

# puts 'Please type your class (warrior, thief, scout, mage):'
# input = gets.chomp.downcase

# player = player.merge(character_classes[input.to_sym])

# puts 'Your character stats:'
# puts player


# def valid_number?(num)
#   num.to_i() != 0
# end

# def get_first_number
#   number1 = ''
#   loop do
#     puts "What's the first number?"
#     number1 = Kernel.gets().chomp()

#     if valid_number?(number1)
#       break
#     else
#       puts "Hmm... that doesn't look like a valid number"
#     end
#   end
#   number1
# end

# get_first_number

# def repeat(word,num)
#   num 
#   while num > 0
#     puts word
#     num -= 1
#   end
# end

# puts repeat('Hello', 3)


# VALID_MOVES = {
#   rock: ['scissors', 'lizard']
# }

# p VALID_MOVES[:rock][0]


# string = 'femi'
# p string.each_char.to_a

# numbers = [1, 2, 3, 4]
# p numbers.shift(1)


# words = "the flintstones rock"

# p words.split.join(' ')


# words = ['the', 'flintsones', 'rock']
# p words.join

# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# p munsters['Herman']['age']


# foo = 'This is cool.'

# def longest_word(sentence)
#   words = sentence.split
#   saved_word = words[0]
# end

# p longest_word(foo)



# words = "This isn't cool"

# length_arr = []

# words.gsub(/[^[:word:]\s]/, '').split(' ').each do |word| 
#   length_arr << word.length
# end


# arr = [1, 2, 3, 4,5]
# output_arr = []

# #original code

# def joinor(arr, sep = ', ', conjunction = 'or')
#   output_arr = []
#   string_arr = arr.join(',').split(',')
#   string_arr.each do |num|
#     if num == string_arr[-1]
#       output_arr << "#{conjunction} #{num}"
#     else
#       output_arr << num
#     end
#   end
#   if output_arr.size > 2
#     output_arr.join("#{sep}")
#   else
#     output_arr.join(' ')
#   end
# end

# joinor([1,2,3],'; ', 'and')


# #refactoring
# def joinor(arr, delimit = ', ', conjuct = 'or')
#   string_arr = []
#   arr.join(" #{delimit}").split(" #{delimit}")
#   arr.each do |char|
#     char == arr[-1] && arr.size > 1 ? string_arr << "#{conjuct} #{char}" : string_arr << char
#   end
#   string_arr.size > 2 ? string_arr.join("#{delimit}") : string_arr.join('')
# end

# joinor([])


# #1. 
# numbers = [1,2,3,4,5,6,7,8,9,10]

# numbers.each {|num| puts num}

# #2. 
# numbers = [1,2,3,4,5,6,7,8,9,10]

# numbers.each {|num| puts num if num > 5}

# #3.
# numbers = [1,2,3,4,5,6,7,8,9,10]

# numbers.select {|num| num if num.odd? }

# #4.
# numbers.push(11)

# #5.
# numbers.pop(11)
# numbers.push(3)

# #6. uniq or uniq! - gets rid of duplicates wihout specifically removing any one value

# #7.
# # array and hash is that a hash contains a key value pair for referencing by key

# #9.
# h = {a: 1, b: 2, c: 3, d: 4}

# h[:b]
# h[:e] = 5

# h.delete_if { |k, v| v < 3.5}

# #10. hash vales can be arrays and you can have an array of hashes

# #11.
# contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
#             ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

# contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

# contacts["Joe Smith"][:email] = contact_data[0][0]
# contacts["Joe Smith"][:address] = contact_data[0][1]
# contacts["Joe Smith"][:phone] = contact_data[0][2]
# contacts["Sally Johnson"][:email] = contact_data[1][0]
# contacts["Sally Johnson"][:address] = contact_data[1][1]
# contacts["Sally Johnson"][:phone] = contact_data[1][2]

# #12.
# contacts["Joe Smith"][:email]
# contacts["Sally Johnson"][:phone]

# #13.
# arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

# arr.delete_if {|word| word.start_with?('s', 'w')}

# #14.
# a = ['white snow', 'winter wonderland', 'melting ice',
#      'slippery sidewalk', 'salted roads', 'white trees']

# new_a = a.map {|word| word.split(' ')}

# new_a.flatten

# #16.
# contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
# contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
# fields = [:email, :address, :phone]

# contacts.each do |name, hash|
#   fields.each do |field|
#     hash[field] = contact_data.shift
#   end
# end

# contacts.each_with_index do |(name, hash), idx|
#   fields.each do |field|
#     hash[field] = contact_data[idx].shift
#   end
# end


string = 'femi adeyinka'
new_string = []

string.split(' ').each do |word|
  new_string << word.capitalize
end

new_string.join(' ')

string.capitalize