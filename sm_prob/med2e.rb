#Triangle Sides

#3 types
# equilateral - all 3 sides are equal
# issoceles - 2 sides are equal and 3rd different
# scalene - all 3 sides are of different length

#input: integer, 3 arguments
#output: symbol with name of triangle

#rules:
# method takes lengths of 3 sides of a triangle 
# returns a symbol depending on type of triangle else invalid 

#algorithm:
# validate the sum of the lengths of 2 short sides > than length of long side
# all side lengths > 0

def valid_triangle(s1, s2, s3)
  side_arr = [s1,s2,s3]
  side_arr.any? != 0 && side_arr.min(2).sum > side_arr.max
end

def triangle(s1, s2, s3)
  sides_array = [s1,s2,s3]
  valid = valid_triangle(s1,s2,s3)

  if valid && sides_array.uniq.size == 1
    :equilateral
  elsif valid && sides_array.uniq.size == 2
    :isoceles
  elsif valid && sides_array.uniq.size == 3
    :scalene
  else
    :invalid
  end
end

triangle(3, 3, 1.5)

#exercise solution
def triangle(s1, s2, s3)
  sides = [s1, s2, s3]
  largest_side = sides.max

  case
  when 2 * largest_side > sides.reduce(:+), sides.include?(0)
    :invalid
  when s1 == s2 && s2 == s3
    :equilateral
  when s1 == s2 || s1 == s3 || s2 == s3
    :isoceles
  else
    :scalene
  end
end

