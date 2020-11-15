# fizzbuzz

#input: integer
#output: mixed integer and words

#rules:
# => write a method that takes two arguments (first is starting and second is ending)
# => if a # is divisible by 3 print fizz

#algorithm:
# => two methods required. Methods should do just one thing

def fizzbuzz(num1, num2)
  count = (num1..num2)
  output = []

  count.each do |num|
    if num % 3 == 0
      output << "Fizz"
      binding.pry
    elsif num % 5 == 0
      output << "Buzz"
    elsif num % 3 == 0 && num % 5 == 0
      output << "FizzBuzz"
    else
      output << num 
    end
  end
  puts output.join(', ')
end

fizzbuzz(1, 15)


# Alternative Solution
def fizzbuzz(starting_number, ending_number)
  result = []
  starting_number.upto(ending_number) do |number|
    result << fizzbuzz_value(number)
  end
  puts result.join(', ')
end

def fizzbuzz_value(number)
  case
  when number % 3 == 0 && number % 5 == 0
    'FizzBuzz'
  when number % 5 == 0
    'Buzz'
  when number % 3 == 0
    'Fizz'
  else
    number
  end
end

#Nothing other than the case method in fizzbuzz_value method. This works because
#a case statement returns the value from the last line of the matched when branch
