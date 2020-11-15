#Hey You

#wrong code
def shout_out_to(name)
  name.chars.each { |c| c.upcase! }

  puts 'HEY ' + name
end

shout_out_to('you')

#correct code
def shout_out_to(name)
  # name.chars.each { |c| c.upcase! }
  puts 'HEY ' + name.upcase
end

shout_out_to('you')

# String#chars method returns an array of characters in a string, so name.chars returns
# ['y','o','u']. Note these character strings are new String objects, different from
# name string, and its those objects we mutate on 2nd line of code
# Solution is to upcase name directly, either destructively or not