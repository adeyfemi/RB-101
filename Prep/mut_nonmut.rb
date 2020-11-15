def fix(value)
  value.upcase!
  value.concat('!')
  value
end

s = 'hello'
t = fix(s)

puts s
puts t

# modified
def fix(value)
  value = value.upcase
  value.concat('!')
end

s = 'hello'
t = fix(s)

puts s.object_id
puts t.object_id

#the method .upcase does not modify the string referenced by value; instead it creates a new copy of the string referenced
# by value, modifies the copy and then returns a reference to the copy
# then bind value to the returned reference


def fix(value)
  puts "initial object #{value.object_id}"
  value = value.upcase
  puts "upcased object #{value.object_id}"
  value.concat('!')
end

s = 'hello'
puts "original object #{s.object_id}"
t = fix(s)
puts "final object #{t.object_id}"


#any mutating operations prior to the assignment of the variable will occur
def fix(value)
  value << 'xyz'
  value = value.upcase
  value.concat('!')
end

s = 'hello'
t = fix(s)

#creating a brand new object in this scenario:

s = 'Hello'
puts s.object_id

s += ' World'
puts s

puts s.object_id

#setter methods and indexed assignment

def fix(value)
  value = value.upcase!
  value.concat('!')
end

s = 'hello'
puts s.object_id

t = fix(s)
puts t.object_id

#s and t have the same reference id because String#upcase! returns reference to its caller 'value'
#many but not all methods that mutate their caller use ! as the last charcter of their name
#String#concat is mutating but it does not include !

#Indexed assignment
a = [3,5,8]

puts a.object_id

a[1].object_id
a[1] = 9

a[1].object_id

puts a

puts a.object_id

#Concatenation is mutating

s = 'Hello'
puts s.object_id

s << ' World'
puts s

s.object_id

#setters are mutating
person.name = 'Bill'
person.age = 23

#looks like an argument but setter calls mutate the object bound to person




