x = 0
3.times do
  x += 1
end

puts x


#undefined local variable or method because x is not available as it is created
#within the scope of the do/end block.

y = 0
3.times do
  y += 1
  x = y
end

puts x


