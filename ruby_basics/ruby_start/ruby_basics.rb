a = %w(a b c d e)

puts a.insert(3,5,6,7).inspect #inspect creates a string representation of itself
puts a.inspect

b = a.insert(3,5,6,7)
puts a.object_id
puts b.object_id


#optional arguments
s = 'abc def ghi,jkl mno pqr,stu vwx yz'
puts s.split.inspect
puts s.split(',').inspect
puts s.split(',', 2).inspect
