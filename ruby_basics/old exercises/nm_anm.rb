def dog(name)
  return "This dog's name is " + name + '.'
end

def cat(name)
  return "This cat's name is " + name + '.'
end

puts dog('Spot')
puts cat('Ginger')

#alternative
def dog(name)
  return name
end

def cat(name)
  return name
end

puts "The dog's name is #{dog('Spot')}."
puts "The cat's name is #{cat('Ginger')}."

#when writing methods it is important to keep track of how many arguments the 
#method accepts and how many it's given upon invocation.

