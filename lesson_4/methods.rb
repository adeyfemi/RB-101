# => each method
numbers = [1, 2, 3]
counter = 0

loop do
  break if counter == numbers.size
  puts numbers[counter]
  counter += 1
end

[1, 2, 3].each do |num|
  puts num
end

#Hash
hash = { a: 1, b: 2, c: 3 }

hash.each do |key, value|
  puts "The key is #{key} and the value is #{value}"
end

# => select method
[1, 2, 3].select do |num|
  num.odd?
end

# => return value is [1,2,3]

[1, 2, 3].select do |num|
  num + 1
  puts num
end
# => return value will be nil

# => map method
[1, 2, 3].map do |num|
  num * 2
end
# => the return value is the product of num and 2. 
# => map then takes this value and places it in a new collection
# => this process is repeated for each element in the original collection

[1, 2, 3].map do |num|
  num.odd?
  puts num
end

# => the return value of the block will always be nil
# => map doesn't care about truthiness, and takes this return value as the transformation criteria
# => the collection returned by map is a new array of nil 

[1, 2, 3].map do |num|
  'hi'
end

# => since 'hi' is the only statement within the block, return value is 'hi'
# =>  this becomes the transformation criteria


