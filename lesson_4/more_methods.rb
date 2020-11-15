# => Enumerable#any?

[1, 2, 3].any? do |num|
  num > 2
end
# => true

# => two return values to be aware of: method returna and block return
# => any? looks at the truthiness of the block's return value in order...
# => to determine what the method's return will be
# => if the block returns a 'truthy' value for any element in the collection, then the method will return true

{ a: "ant", b: "bear", c: "cat" }.any? do |key, value|
  value.size > 4
end
# => false

# => Enumerable#all?
[1, 2, 3].all? do |num|
  num > 2
end
# => false
{ a: "ant", b: "bear", c: "cat" }.all? do |key, value|
  value.length >= 3
end
#true

# => Enumerable#each_with_index
[1, 2, 3].each_with_index do |num, index|
  puts "The index of #{num} is #{index}."
end

{ a: "ant", b: "bear", c: "cat" }.each_with_index do |pair, index|
  puts "The index of #{pair} is #{index}."
end

#Enumerable#each_with_object
[1, 2, 3].each_with_object([]) do |num, array|
  array << num if num.odd?
end

{ a: "ant", b: "bear", c: "cat" }.each_with_object([]) do |pair, array|
  array << pair.last
end

#alternative way of showing
{ a: "ant", b: "bear", c: "cat" }.each_with_object({}) do |(key, value), hash|
  hash[value] = key
end

#Enumerable#first
[1, 2, 3].first

hash_first = { a: "ant", b: "bear", c: "cat" }.first(2)

p hash_first

# => Enumerable#include?
[1, 2, 3].include?(1)

{ a: "ant", b: "bear", c: "cat" }.include?("ant")
# => false

{ a: "ant", b: "bear", c: "cat" }.include?(:a)
#true

#Enumerable#partition
[1, 2, 3].partition do |num|
  num.odd?
end

# => the return value is a nested array, with the inner arrays separated based..
# => on the return value of the block. 
# => the most idiomatic way to use partition is to parallel assign variables to capture
# => the divided inner arrays

odd, even = [1, 2, 3].partition do |num|
  num.odd?
end

# odd # => [1,3]
# even # => [2]

long, short = { a: "ant", b: "bear", c: "cat" }.partition do |key, value|
  value.size > 3
end

#to transform the code above into hash, invoke Array#to_h
long.to_h
short.to_h



