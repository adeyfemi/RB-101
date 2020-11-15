#Tri-angles

#input: integer
#output: symbol

DEGREES = 180

def triangle(a1, a2, a3)
  angles = [a1, a2, a3]
  largest_side = angles.max

  case
  when 2 * largest_side > DEGREES, angles.include?(0), angles.uniq.size == 1
    :invalid
  when angles.all? {|angle| angle < 90 } 
    :acute
  when DEGREES - angles.include?(90)
    :right
  else
    :obtuse
  end
end


triangle(60,70,50)
triangle(120, 50, 10)

#exercise solution
def triangle(angle1, angle2, angle3)
  angles = [angle1, angle2, angle3]

  case
  when angles.reduce(:+) != 180, angles.include?(0)
    :invalid
  when angles.include?(90)
    :right
  when angles.all? { |angle| angle < 90 }
    :acute
  else
    :obtuse
  end
end

