#new array / running total - map, each, each_with_object and inject

def running_total(array)
  sum = 0
  array.map { |x| sum += x  }
end

p running_total([2,3,4,5,6])

def running_total(array)
  sum = 0
  array.each_with_object([]) {|i, a| a << sum += i }
end

p running_total([2,3,4,5,6])

#alternatives
def running_total(array)
  empty_array = []
  sum = 0
  array.each do |number|
    sum += number
    empty_array << sum
  end
  empty_array
end