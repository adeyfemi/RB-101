#How Many

vehicles = ['car','car','truck','car','SUV','truck',
  'motorcycle','motorcycle','car','truck']

def count_occurences(array)
  occurences = {}

  array.uniq.each do |element|
    occurences[element] = array.count(element)
  end

  occurences.each do |element, count|
    puts "#{element} => #{count}"
  end
end

#pseudo code

#1 - create an empty array to store the items
#2 - iterate over the unique items in the array and create a variable storing the element as the count of the array
#3 - iterate over the empty array and for each key, value print the key, value