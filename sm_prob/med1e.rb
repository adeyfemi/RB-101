#Diamonds

#input: integer
#output: star diamond

#rules:
#method that displays a 4-pointed diamond in n x n grid
# n is an odd integer supplied in an argument to the method
# assume argument will always to be an odd integer

#algorithm:
# create a method to iterate through numbers
# create another method to print out the diamond shape
# print out the diamond

def diamonds(num)
  diamond = "*"
  1.upto(num-1) do |count|
   puts (diamond * count).center(num) if count.odd? 
  end
  (num).downto(0) do |number|
    puts (diamond * number).center(num) if number.odd?
  end
end

diamonds(9)

#exercise solution
def print_row(grid_size, distance_from_center)
  number_of_stars = grid_size - 2 * distance_from_center
  stars = "*" * number_of_stars
  puts stars.center(grid_size)
end

def diamond(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(0) {|distance| print_row(grid_size, distance)}
  1.upto(max_distance) {|distance| print_row(grid_size, distance)}
end

#student solution
def diamond(int)
  lines = []
  (1..int).each { |num| lines << num if num.odd? }
  (1..(int - 1)).reverse_each { |num| lines << num if num.odd? }
  lines.each { |num| puts ("*" * num).center(int) }
end


#lessons from the exercise
# - define the relevant variables
# - 