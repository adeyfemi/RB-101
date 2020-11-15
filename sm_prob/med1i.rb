#Recursion Numberds (procedural)

def fib(nth)
  first, last = [1,1]
  3.upto(nth) do
    first, last = [last, first + last]
  end

  last
end

def find_fibonacci_index_by_length(number_digits)
  first = 1
  second = 1
  index = 2

  loop do
    index += 1
    fibonacci = first + second
    break if fibonacci.to_s.size >= number_digits

    first = second
    second = fibonacci
  end

  index
end