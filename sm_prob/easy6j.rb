# Right Triangles

#input: integer
#output: right triangle with sides of n stars

#rules:
# write a method that takes a positive integer
# displays a right triangle whose sides each have n stars
# The hypotenuse of the triangle should have one end at the lower left of the triangle
# and the other end at the upper triangle

#algorithm:
#1. write a method that passes an integer as an argument
#2. using puts display a hypotenuse triangle
#3. initiate a variable named count and set it to the argument number less 1
#4. initiate a variable to track the number of stars on each line 
#4. loop through the count variable and display the number of stars in each line 


STAR_SYMBOL = '*'

def triangle(stars)
  count_space = stars
  count_symbol = 1

  while count_space > 0 
    stars.times do |num|
      puts (" " * count_space) + (STAR_SYMBOL * (count_symbol))
      count_space -= 1
      count_symbol += 1
    end
  end
end

triangle(5)
triangle(9)


# Alternative Solution

def triangle(num)
  spaces = num - 1
  stars = 1

  num.times do |n|
    puts (' ' * spaces) + ('*' * stars)
    spaces -= 1
    stars += 1
  end
end

#Flip upside down

def triangle(stars)
  count_space = stars
  count_symbol = 1

  while count_space > 0 
    stars.times do |num|
      puts (" " * count_symbol) + (STAR_SYMBOL * (count_space))
      count_space -= 1
      count_symbol += 1
    end
  end
end