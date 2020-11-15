#Getting things done

def move(n, from_array, to_array)
  to_array << from_array.shift
  move(n - 1, from_array, to_array)
end

# Example

todo = ['study', 'walk the dog', 'coffee with Tom']
done = ['apply sunscreen', 'go to the beach']

move(2, todo, done)

p todo 
p done

#Every recursion needs a base case, i.e. a condition under which it will stop. The method 
#doesn't have one, so it just repeats itself with ever decreasing values for n
#In order to know where it needs to return to after  finishing each of these calls, Ruby 
#puts each call on a call stack. Since we never stop, this stack keeps growing, until
#it exceeds its limit. this causes 'SystemStackError - a real stack overflow!'

#In order to fix, add a condition that stops recursion

def move(n, from_array, to_array)
  return if n == 0
  to_array << from_array.shift
  move(n - 1, from_array, to_array)
end

# Example

todo = ['study', 'walk the dog', 'coffee with Tom']
done = ['apply sunscreen', 'go to the beach']

move(2, todo, done)

p todo
p done

