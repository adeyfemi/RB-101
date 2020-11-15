# #String assignment

# name = 'Bob'
# save_name = name
# name.upcase!
# puts name, save_name

# #easy2j

# array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
# array2 = []
# array1.each { |value| array2 << value }
# array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
# puts array2


#PEDAC Process

# def substrings(str)
#   result = []
#   start_substring_idx = 0
#   end_substring_idx = start_substring_idx + 1
#   loop do
#     break if start_substring_idx == str.size
#     loop do
#       break if end_substring_idx == str.size
#       result << str[start_substring_idx..end_substring_idx]
#       end_substring_idx += 1
#     end
#     start_substring_idx += 1
#     end_substring_idx = start_substring_idx + 1
#   end
#   result
# end

# p substrings('halo')

# def substrings(str)
#   result = []
#   0.upto(str.size - 2).each do |start_idx|
#     (start_idx + 1).upto (str.size - 1) do |end_idx|
#       result << str[start_idx..end_idx]
#     end
#   end
#   result
# end

# p substrings('halo')


0.upto(3).each do |num|
  puts num
end
