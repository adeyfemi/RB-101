#How Many?
#count the number of occurences of each element

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck',
'motorcycle','motorcycle','car', 'truck']

def count_occurences(array)
  occurences = {}
  array.uniq.each do |element|
    occurences[element] = array.count(element)
  end

  occurences.each do |element, count|
    puts "#{element} => #{count}"
  end
end

count_occurences(vehicles)

# create a hash to store the occurences
# iterate each unique item and store the elements in a hash by using count on array
# => this forms a key, value hash
# print out the key, value 

# occurences = {}
# # occurences['car'] =  vehicles.count('car')

# # puts occurences

# occurences[:car] = 'toyota'

# puts occurences

