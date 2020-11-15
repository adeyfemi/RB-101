# question 1
10.times {|count| puts ' ' * count + "The Flinstones Rock!" }

# question 2
sum = 40 + 2
puts "the value of 40 + 2 is " + "#{sum}"
puts "the value of 40 + 2 is " +(40 + 2).to_s
puts "the value of 40 + 2 is " + "#{40+2}"

# question 3

def factors(number)
  divisor = number
  factors = []
  begin
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end until divisor == 0
  factors
end

def factors(number)
  divisor = number
  factors = []
  while divisor > 0 do
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end
  
factors(10)
factors(0)
factors(-6)

# bonus 1: mudolo operator determines if the result of the division is an integer number (no remainder)
# bonus 2: this actual return value of the method. Without an explicit return statement in the code, 
# the return value of the method is the last statement executed. 

# question 4: is there a difference between the two, other than what operator she chose to use to add an element to the buffer?

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

# Yes, there is a difference. While both methods have the same return value, in the first implementation,
# the input argument called buffer will be modified and will end up being changed after rolling_buffer1 returns
# That is, the caller will have the input array that they pass in be difference once the call returns.
# In the other implementation, rolling_buffer2 will not alter the caller's input argument

# question 5
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

# the code initiated a variable outside of the method scope. Limit is defined before fib is called
# But limit is not visible in the scope of fib because fib is a method and does have access to any local variables outside of its scope
# You can make limit an additional argument to the definition of the fib method and pass it in when you call fib

# question 6
answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8

# answer is 34

# question 7
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

# The family data changes. Ruby passes the object id of each item rather than the value of the parameter.
# The method internally stores these object id's in locally scoped (private to the method) variables (named per the method definition's parameter list)
# Spot's demo_dash starts off pointing to the munsters hash. Program does not reassign demo_hash -- it uses it as-is
# So the actual hash object that is being messed with inside of the method IS the munsters hash

# question 8
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

# answer is "paper":  Work from the inner most arguments to the outer most arguments


# question 9: what would be the return value of the following method invocation?
def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

bar(foo)

# answer: the foo method will always be "yes", and "yes" == "no" will be false






