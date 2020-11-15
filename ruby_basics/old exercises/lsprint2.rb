#ex9

loop do
  lines = nil
  input_string = nil

  loop do
    puts ">> How many output lines do you want? Enter a number >= 3 (Q to quit):"

    lines = gets.chomp.to_i
    break if lines >= 3
    
    input_string = gets.chomp.downcase
    break if input_string == 'q'
    
    puts "Tha's not enough lines."
  end

  break if input_string == 'q'

  while lines > 0
    puts "Launch school is the best!"
    lines -= 1
  end
end









