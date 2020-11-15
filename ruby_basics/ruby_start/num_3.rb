arr.each do |num|
  if num == number
    puts "#{number} is in the array."
  end
end

if arr.include?(number)
  puts "#{number} is indeed in the array."
end