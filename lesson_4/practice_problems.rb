#question 1
# => the return value for select will be the original array because select returns...
# => the truthiness of the block's returned value

[1, 2, 3].select do |num|
  num > 5
  'hi'
end

# => select performs selection based on the truthiness of the block's return value
# => the return value will always be 'hi', which is a truthy value...
# => therefore, select will return a new array containing all of the elements in the original array

#question 2
['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end
# => how does count treat the block's return value?
# => count the number of elements for which the block returns a true value
# => count considers the truthiness of the block's return value

#question 3
[1, 2, 3].reject do |num|
  puts num
end
# reject returns a new array containing items where the block's value is 'falsey'
# in other words, if the return value was false or nil the element would be selected

#question 4
['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

# => based on knowledge of each return value should be original collection
# => not true. when each_with_object used, we pass in an object {} as argument
# => That object is then passed into the block and its updated value is returned at the end of each iteraton
# once each_with_object has iterated over the calling collection, it returns 
# => the initially given object, which now contains all updates

#question 5
# => removes a key value pair and returns it as a two-item array

hash = {a: 'ant', b: 'bear'}
p hash.shift

#question 6

['ant','bear','caterpillar'].pop.size

# => pop destructively removes the last element from the calling array and returns it
# => caterpillar chosen and counted for characters

#question 7
[1,2,3].any? do |num|
  puts num
  num.odd?
end

# => return value of the block is determined by the return value of the last
# => expression within the block. In this case the last statement evaluated is num.odd?, which returns a boolean
# the block's return value will be a boolean, since Fixnum#odd? can only return true or false
# Array#any? method returns true if the block ever returns a value other than false or nil,
# => and the block returns true on the first iteration, we know that any? will return true
# any? stops iterating after this point since there is no need to evaluate the remaining items in the array, so puts num is only invoked for the first item in the array

#question 8

arr = [1,2,3,4,5]
arr.take(2)
# => Array#take selects a specified number of elemeants from an array. 
# => we're also able to verify that it isn't a destructive method

#question 9
{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end

#the return value will be a boolean of nil and bear
#1 - the return value of map is an array
#2 - for the first element, the condition evaluates to false and value isn't returned
# => when none of the if statements evaluates as true, the if statement itself returns nil

#question 10
[1,2,3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

#determine the block's return value by looking at the return value of the last statement evaluated within the block



