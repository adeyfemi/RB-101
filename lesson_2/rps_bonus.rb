VALID_CHOICES = %w(r p s l sp)

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  (first == 'r' && (second == 's' || second == 'l')) ||
    (first == 'p' && (second == 'r' || second == 'sp')) ||
    (first == 's' && (second == 'p' || second == 'sp')) ||
    (first == 'sp' && (second == 'r' || second == 's'))
end

def display_result(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

loop do
  move_prompt = <<-MSG

  What move would you like to make?
  r) rock
  p) paper
  s) scissors
  l) lizard
  sp) spock

  MSG

  prompt(move_prompt)
  move = ''

  loop do
    move = Kernel.gets().chomp()

    if VALID_CHOICES.include?(move)
      break
    else
      prompt("You must choose from the five options")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose: #{move}; Computer chose: #{computer_choice}")

  player_score = []
  computer_score = []

  loop do
    if display_result(move, computer_choice)
      player_score << 1
    elsif display_result(computer_choice, move)
      computer_score << 1
    end
    break
  end

    if player_score.length == 5
      break
    elsif computer_score.length == 5
      break
    end

  prompt("The final score is #{player_score.length} to #{computer_score.length}.")

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing. Good bye!")
