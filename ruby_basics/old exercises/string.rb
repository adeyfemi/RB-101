#ex1
name = ''

#ex2
puts "It's now 12 o'clock."
#alternative - %Q(It's now 12 o'clock.) 

#ex3
name = 'Roger'

puts name.casecmp('RoGeR') == 0
puts name.casecmp('DAVE') == 0

#casecmp performs case-insensitive comparison, meaning it ignores the case of each character
#when both compared strings are equal, #casecmp will return 0

#ex4
name = 'Elizabeth'

puts "Hello, #{name}!" #this is called string interpolation

#ex5
first_name = 'John'
last_name = 'Doe'

full_name = "#{first_name} #{last_name}"

puts full_name

#alternative includes using string#+ or string#<< (mutates the caller)

#ex6
state = 'tExAs'

state.capitalize!
puts state

#ex7
greeting = 'Hello!'
puts greeting

greeting.replace('Goodbye!')
puts greeting

#ex8
alphabet = 'abcdefghijklmnopqrstuvwxyz'

puts alphabet.split('')

#ex9
words = 'car human elephant airplane'

words.split(' ').each do |word|
  puts word + 's'
end


words = ['car', 'human', 'elephant', 'airplane']

words.each do |x|
  puts x.insert(-1,'s')
end

#ex10
colors = 'blue pink yellow orange'

puts colors.include?('yellow')
puts colors.include?('purple')

#to check whether a given string includes a specific substring use #include? method

colors = 'blue boredom yellow'
puts colors.include?('red')  




