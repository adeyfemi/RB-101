# # def oddities(array)
# #   odd_elements = []
# #   index = 0
# #   while index < array.size
# #     odd_elements << array[index]
# #     index += 2
# #   end
# #   odd_elements
# # end

# # oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
# # oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
# # oddities(['abc', 'def']) == ['abc']
# # oddities([123]) == [123]
# # oddities([]) == []

# #even indexes
# def oddities(array)
#   even_elements = []
#   index = 1
#   while index < array.size
#     even_elements << array[index]
#     index += 1
#   end
#   even_elements
# end

# oddities([2, 3, 4, 5, 6]) == [3, 5]
# oddities([1, 2, 3, 4, 5, 6]) == [2, 4, 6]
# oddities(['abc', 'def']) == ['def']
# puts oddities([123]) == []
# oddities([]) == []

# #alternative methods
# def oddities(array)
#   array.select {|x| array.index(x).even?}
# end

# def oddities(array)
#   array.select.with_index { |value, index| value if index.even? }
# end

#solution involves inputting the elements of a specific index into a a new array
def oddities(array)
  new_array = []
  index = 0
  loop do
    break if index >= array.size
    new_array << array[index]
    index += 2
  end
  new_array
end

oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
oddities(['abc', 'def']) == ['abc']
oddities([123]) == [123]
oddities([]) == []


