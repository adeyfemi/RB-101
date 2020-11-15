#Bubble Sort

#input: integer or strings in array
#output: sort in descending order

#rules:
#method that takes an array as an argument
#sorts the array using bubble sort algorithm 
#sort will be in-place, you will mutte the array passed as an argument
# assume array contains at least 2 elements

def bubble_sort!(array)
  loop do
    swapped = false
    1.upto(array.size - 1) do |index|
      next if array[index - 1] <= array[index]
      array[index - 1], array[index] = array[index], array[index - 1]
      swapped = true
    end

    break unless swapped
  end
end

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)

#pseudo code wikipedia
# procedure bubbleSort(A : list of sortable items)
#     n := length(A)
#     repeat
#         swapped := false
#         for i := 1 to n - 1 inclusive do
#             if A[i - 1] > A[i] then
#                 swap(A[i - 1], A[i])
#                 swapped = true
#             end if
#         end for
#         n := n - 1
#     until not swapped
# end procedure

#student solution
def bubble_sort! arr
  loop do
    temp_arr = arr.clone
    (arr.size - 1).times do |idx|
      arr[idx], arr[idx + 1] = arr[idx + 1], arr[idx] if arr[idx] > arr[idx + 1]
    end
    break if temp_arr == arr
  end
end

