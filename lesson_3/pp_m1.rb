#q1
10.times { |number| puts (" " * number) + "The Flintstones Rock!" }

#q2
# puts "the value of 40 + 2 is " + (40 + 2)

num = 40 + 2
p num

puts "the value of 40 + 2 is #{num}."
puts "the value of 40 + 2 is " + "#{num}"

#fix to either call to string or use string interpolation

#q3
def factors(number)
  divisor = number
  factors = []
  loop do
    if number % divisor == 0
      factors << number / divisor
    end
    divisor -= 1
    break if divisor == 0
  end
  factors
end


factors(0)

#answer
while divisor > 0 do
  factors << number / divisor if number % divisor == 0
  divisor -= 1
end

#bonus 1 - number % divisor == 0 means no remainder using the divisor and if true calculate and append
#bonus 2 - 'factors' referenced in method - this is what is the actual return value from the method. 
# - Recall that without explicit return statement in the code, the return value of the method is the last statement executed.
# - If we omitted this line, the code would execute, but the return value of the method would be nil

#q4
def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

#using << or + to append elements
# - there is a difference. While both methods have the same return value, in the first implementation, the input argument called
# - buffer will be modified and will end up being changed after rolling_buffer1 returns.
# that is, the caller will have the input array that they pass in be different once the call returns. 
# In the other implementation, rolling_buffer2 will not alter the caller's input argument

#q5
limit = 15

def fib(first_num, second_num)
  limit = 15
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"

#the limit variable is not visible to the method scope because fib is a method and does not have access to any local 
# variables outside of its scope

#q6
answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8

#q7
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end

mess_with_demographics(munsters)

#The data is distorted because Ruby passes the object id and not just the value of the parameter
# The method internally stores these object id's in locally scoped (private to the method) variables (named per method definition's parameter list)
#The demo_hash starts off pointing to the munsters hash. The program could wind up replacing that with some other object id and family data would be safe , but
# the program does not reassign demo_hash - it uses it as is - so actual hash object that is being messed with inside of the method IS the munsters hash

#q8
def rps(fist1, fist2)
  if fist1 == "rock"
    (fist2 == "paper") ? "paper" : "rock"
  elsif fist1 == "paper"
    (fist2 == "scissors") ? "scissors" : "paper"
  else
    (fist2 == "rock") ? "rock" : "scissors"
  end
end

puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")

#q9
def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

bar(foo)

#this is becuase the value returned from the foo method will always be "yes" and "yes" == "no" will be false.







