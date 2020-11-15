# Code Testing 

# input: integer
# output: string with conjuction
# rules: write a method that returns a string with a new delimiter and conjuction

# algorithm:
# a. define a method and pass in the parameters: array, delimiter, and conjunction
# b. the delimiter should be a parameter set to comma
# c. the conjuction should be a parameter set to or
# d. if there are two items in the array return a string with just conjuction and no delimiter
# e. if there are three items in the array, return a string with the delimiter and a conjuction on the last word
# f. else if there is one item, return only the string version of the argument
# g. else if there are no items in the array, return an emoty string


def joinor(arr, delimiter = ', ', conjuction = 'or')
  if arr.size == 0
    ''
  elsif arr.size == 1
   "#{arr[0]}"
  elsif arr.size == 2
    "#{arr[0]} #{conjuction} #{arr[1]}"
  else
    arr[-1] = "#{conjuction} #{arr[-1]}"
    arr.join(delimiter)
  end
end

joinor([1,2], '; ', 'and')


WINNING_LINES = [[1,2,3], [4,5,6], [7,8,9]] + 
                [[1,4,7], [2,5,8], [3,6,9]] + 
                [[1,5,9], [3,5,7]]

WINNING_LINES[0][1]

DEFENSE = [[1,2,3], [4,5,6], [7,8,9]]

DEFENSE.each do |line|
  p line[0]
end


INITIAL_MARKER = ' '

def display_board(brd)
  # system 'clear'
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}  "
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}  "
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}  "
  puts "     |     |"
  puts ""
end
# rubocop: enable Metrics/MethodLength, Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

board = initialize_board

board

femi = {last: 'adeyinka', first: 'femi'}
femi[:last]


num = 0
number = 13

num << number


arr = [1,2,3,4,1]

arr.count(2)

arr.join(', ').split(',', 3)


2.times do
  puts " " * 2
end


property = {'name': 'femi', 'age': 32}

property['age'] << 1


interleave = [1,2,3,'a', 'b', 'c']

interleave.join(',').split(',').sort
