#How old is Teddy?

def age
  rand(20..200)
end

puts "What is your name?"
name = gets.chomp
puts "#{name} is #{age} old!"
