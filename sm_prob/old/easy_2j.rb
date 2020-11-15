array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }

puts array2

# array2 and array1 both contain the same values and string objects
# array2 is referencing the values in array1
# array2 will also get mutated when array1 is permanently mutated

