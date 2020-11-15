#ex4
pets = { cat: 'fluffy', dog: ['sparky', 'fido'], fish: 'oscar' }
pets[:dog].push('bowser')
p pets

#element reassignment to reassign the value associated with the key :dog

#ex5
numbers = [5, 2, 9, 6, 3, 1, 8]

even_numbers = numbers.select do |n|
  n.even?
end

p even_numbers

#use select for selection and returns a new array only containing the elements 
#of the original array for which the return value of the block is truthy


