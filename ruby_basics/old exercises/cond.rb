#ex1
sun = ['visible','hidden'].sample

if sun == 'visible'
  puts 'The sun is so bright!'
end

#ex2
sun = ['visible','hidden'].sample

unless sun == 'visible'
  puts 'The clouds are blocking the sun!'
end

#ex3
sun = ['visible','hidden'].sample

puts 'The sun is so bright!' if sun == 'visible'
puts 'The clouds are blocking the sun!' unless sun == 'visible'

#ex4
boolean = [true,false].sample

boolean ? puts("I'm true!") : puts("I'm false")

#tenary operator: <condition> ? <result if true> : <result if false>

#ex5
number = 7

if number
  puts "My favorite number is #{number}"
else
  puts "I don't have a favorite number"
end

#in Ruby every expression evaluates to true when used in a condition. 
#The only exception to this are false and nil.

#ex6
stoplight = ['green', 'yellow', 'red'].sample

case stoplight
when 'green'
  puts 'Go!'
when'yellow'
  puts 'Slowdown!'
else
  puts 'Stop!'
end

#'case when' method

#ex7
stoplight = ['green', 'yellow', 'red'].sample

if stoplight == 'green'
  puts 'Go!'
elsif stoplight == 'yellow'
  puts 'Slowdown!'
else
  puts 'Stop!'
end

#case statement is best suited for comparing multiple values to the same case
#if statement compares stoplight to a different value a total of three times
#much easier to reference stoplight once, then list the comparisons.

#ex8
status = ['awake', 'tired'].sample

alert = if status == 'awake'
  'Be productive!'
else
  'Go to sleep!'
end

puts alert

#smart way to save time by saving your conditionals in a variable.

#ex9
number = rand(10)

if number == 5
  puts '5 is a cool number!'
else
  puts 'Other numbers are cool too!'
end

#ex10
stoplight = ['green', 'yellow', 'red'].sample

case stoplight
when 'green' then puts 'Go!' 
when 'yellow' then puts 'Slowdown!' 
else puts 'Stop!' 
end









