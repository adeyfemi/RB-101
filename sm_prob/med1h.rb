#Fibonacci Numbers (Recursion)

#rules
#method that computes the nth fib number, where n is an arg to the method

def fib(n)
  if n <= 2
    1
  else
    fib(n-2) + fib(n-1)
  end
end

fib(50


#tail recursion
def fibonacci_tail(nth, acc1, acc2)
  if nth == 1
    acc1
  elsif nth == 2
    acc2
  else
    fibonacci_tail(nth - 1, acc2, acc2 + acc1)
  end
end

def fibonacci(nth)
  fibonacci_tail(nth, 1, 1)
end

fibonacci(50)