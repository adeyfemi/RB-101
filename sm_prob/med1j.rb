#Fib Numbers (Last Digit)

#rules:
# method that returns the last digit of the nth Fibonacci Number

def fib_last(nth)
  first, last = [1,1]
  3.upto(nth) do
    first, last = [last, first + last]
  end
 last.to_s.[-1].to_i
end

fib_last(15)


def fibonacci_last(nth)
  last_2 = [1, 1]
  3.upto(nth) do
    last_2 = [last_2.last, (last_2.first + last_2.last) % 10]
  end

  last_2.last
end