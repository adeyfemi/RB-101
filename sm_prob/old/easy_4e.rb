def multisum(num)
  count = num
  num_array = []
  loop do
    if count % 3 == 0 || count % 5 == 0
      num_array << count
    end
    break if count == 0
    count -= 1
  end
  num_array.inject(0, :+)
end

puts multisum(20)

#alternative solutions 
def multisum(num)
  (1..num).select { |n| n % 3 == 0 || n % 5 == 0 }.reduce(:+)
end

def multisum(value)
  array = []

  for num in 2..value
    if num % 3 == 0 || num % 5 == 0
      array << num
    end
    array.sum
  end
end

#2nd codde may only work for Ruby 2.4

def multiple?(number, divisor)
  number % divisor == 0
end

def multisum(max_value)
  sum = 0
  1.upto(max_value) do |number|
    if multiple?(number, 3) || multiple?(number, 5)
      sum += number
    end
  end
  sum
end