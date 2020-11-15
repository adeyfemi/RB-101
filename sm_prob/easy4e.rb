#Multiples of 3 and 5

def multisum(num)
  sum = 0
  1.upto(num) do |item|
    if item % 3 == 0 || item % 5 == 0
      sum += item
    end
  end
  sum
end

#alternative method
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

#Further exploration - Enumerable.inject or Enumerable.reduce

p multisum(3)
p multisum(5)
p multisum(10)
p multisum(1000)

