#ex1
pets = ['cat','dog','fish','lizard']

my_pet = pets[2]

puts "I have a pet #{my_pet}!"

#use array#[] to select items from an array

#ex2
pets = ['cat','dog','fish','lizard']

my_pets = pets[2..3]

puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}!"

#select multiple items from an array using 'range of numbers'

#ex3
pets = ['cat', 'dog', 'fish', 'lizard']
my_pets = pets[2..3]
my_pets.pop

puts "I have a pet #{my_pets[0]}!"

#ex4
pets = ['cat', 'dog', 'fish', 'lizard']
my_pets = pets[2..3]
my_pets.pop
my_pets.push('dog')

puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}!"

#push - use to add new elements into the array. Must still note index when retrieving

#ex5
colors = ['red','yellow','purple','green']

colors.each do |color|
  puts "I'm the color #{color}!"
end


#ex6
numbers = [1,2,3,4,5]

numbers.map {|x| p x*2}

doubled_numbers = numbers.map do |number|
  number * 2
end

p doubled_numbers

#array#map iterates over the array and returns a new array
#new element value of array#map uses return value of the block. 
#each element in the new array is the return value of the block at each iteration

#ex7
numbers = [5,9,21,26,39]

divisible_by_three = numbers.select do |number|
   number % 3 == 0
end

p divisible_by_three

#p intead of puts leaves the array in place but link to a new variable name

#ex8
['Dave', 7, 'Miranda', 3, 'Jason', 11]

[['Dave',7],['Miranda',3],['Jason',11]]

#ex9
favorites = [['Dave',7],['Miranda',3],['Jason',11]]

flat_favorites = favorites.flatten do |array|
  p array
end

p flat_favorites

#ex10
array1 = [1, 5, 9]
array2 = [1, 9, 5]

puts array1 == array2







