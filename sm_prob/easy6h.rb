# Find the duplicate

#input: input array
#output: integer

#rules: given an ordered array that exactly one item occurs twice
# => determine which value occurs twice?
# write a method that will find and return the duplicate value that is known to be in the array

#algorithm:
#1. call a method and pass in an array as an argument
#2. iterate through the array and search for duplicates
#3. pass duplicates into a new array and check if the number is in the array
#4. if it is in the array keep, if not skip
#5. pop the array and return an integer version of the duplicated 

def find_dup(arr)
  new_arr = []
  count = new_arr.size 

  arr.each do |num|
    if arr.count(num) == 2
      new_arr << num
    end
  end
  new_arr.pop.to_s.to_i
end

find_dup([1,5,3,1]) == 1
find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
          38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
          14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
          78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
          89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
          41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
          55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
          85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
          40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
          7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73


# Alternative Solution
def find_dup(array)
  array.find { |element| array.count(element) == 2 }
end