#Running Totals
def running_total(array)
  sum = 0
  array.map do |num|
    sum += num
  end
end

def running_total(array)
  sum = 0
  array.each_with_index do |num, index|
    sum += num
    array[index] = sum
  end
end

def running_total(array)
  sum = 0
  array.each_with_object([]) do |num, arr|
    sum += num
    arr << sum
  end
end

p running_total([2,5,13])
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []
