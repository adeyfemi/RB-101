#Odd Lists
def oddities(array)
  new_array = []
  array.select.with_index do |num, index|
    new_array << num if index.even?
  end
  new_array
end

def oddities(array)
  new_array = []
  count = 0

  while count < array.size
    new_array << array[count]
    count += 2
  end
  new_array
end


#Further Exploration
def oddities(array)
  new_array = []
  array.select.with_index do |num, index|
    new_array << num if index.odd?
  end
  new_array
end

#Using each to select the items
def oddities(array)
  new_array = []
  array.each_with_index do |num, index|
    new_array << num if index.odd?
  end
  new_array
end

p oddities([2,3,4,5,6])
p oddities([1,2,3,4,5,6])
p oddities(['abc','def'])
p oddities([123]) 
p oddities([])



