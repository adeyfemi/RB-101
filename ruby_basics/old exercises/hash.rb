#ex1
car = {
  type: 'sedan',
  color: 'blue', 
  mileage: 80_000
}

#alternative
car = {
  'type' => 'sedan',
  'color' => 'blue', 
  'mileage' => 80_000
}

#ex2
car = {
  type:    'sedan',
  color:   'blue',
  mileage: 80_000
}

car[:year] = 2003

#element assignment - associates the value given by value with the key given by key

#ex3
car.delete(:mileage)

#ex4
puts car[:color]

#ex5
numbers = {
  high:   100,
  medium: 50,
  low:    10
}

numbers.each do |k,v|
  puts "A #{k} number is #{v}."
end

#ex6
numbers = {
  high:   100,
  medium: 50,
  low:    10
}

half_numbers = numbers.map do |k,v|
  v / 2
end

p half_numbers #this will return an array not a hash.

#ex7
numbers = {
  high:   100,
  medium: 50,
  low:    10
}

low_numbers = numbers.select do |k,v|
  v < 25
end

p low_numbers

#ex8

numbers = {
  high:   100,
  medium: 50,
  low:    10
}

low_numbers = numbers.select! do |k,v|
  v < 25
end

p low_numbers
p numbers

#ex9 - nested hash
{
  car: {type: 'sedan',color: 'blue', mileage: 80_000},
  truck: {tyoe: 'pickup', color: 'red', year: 1998}
}


#ex10
car = [[:type, 'sedan'], [:color, 'blue'], [:year, 2003]]

#arrays are better for ordered lists, hashes better because values require labels
