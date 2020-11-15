#exercise 1
numbers = [1,2,3,4,5,6,7,8,9,10]

numbers.each do |num|
  puts num
end

#one line version

numbers = [1,2,3,4,5,6,7,8,9,10]

numbers.each { |number| puts number}

#Exercise 2
numbers = [1,2,3,4,5,6,7,8,9,10]

numbers.each do |num|
  if num > 5
    puts num
  else
    puts "This number is less than 5"
  end
end

#one line version

numbers.each { |number| puts number if number > 5}

#Exercise 3
new_array = numbers.select { |number| number % 2 != 0}

#multi line version

new_array = numbers.select do |number|
  number % 2 != 0
end

#Exercise 4
numbers = [1,2,3,4,5,6,7,8,9,10]

numbers.push(11)
numbers << 11

numbers.unshift(0)


#Exercise 5
numbers.pop(11)
numbers.push(3)
numbers << 3

#Exercise 6
numbers.uniq # does not modify calling object
numbers.uniq! # modifies the calling object

#Exercise 7 - the main difference between an array and a hash is that a hash contains a key value pair for referencing by key

#Exercise 8
my_girl = {name: 'Aminat'}
my_girl = {:name => 'Aminat'}


#Exercise 9

h = {a:1, b:2, c:3}

h[:b] # find a value from a key

h[:e] = 5 # add a new key value pair

#remove all key value pairs whose value is less than 3.5

#one line method
h.delete_if { |k, v| v < 3.5 }

#multi line method

h.delete_if do |k,v|
  v < 3.5
end

#Exercise 10

#hash values can be arrays and you can have an array of hashes

hash = {names: ['bob', 'joe', 'susan']}
arr = [{name: 'bob'}, {name: 'joe'}, {name: 'susan'}]

#Exercise 11
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]

contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]


#Exercise 12
contacts["Joe Smith"][:email]
contacts["Sally Johnson"][:phone]

#Exercise 13

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if {|word| word.startwith?("s")}

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if {|word| word.startwith?("s", "w")}

#Exercise 14

a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

a.map { |w| w.split}
a = a.flatten
puts a

#transformation so use map method and then split the words 

#Exercise 15
hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end


#Exercise 16

contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
fields = [:email, :address, :phone]

contacts.each do |name, hash|
  fields.each do |field|
    hash[field] = contact_data.shift
  end
end


contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
fields = [:email, :address, :phone]


contacts.each_with_index do |(name, hash), idx|
  fields.each do |field|
    hash[field] = contact_data[idx].shift
  end
end



















