VALID_MOVES = %w(rock paper scissors)
SHORT_FORM_MOVES = %W(r p x)

def prompt(message)
  Kernel.puts(message)
end

def valid_name
  name = ''
  loop do
    name = gets().chomp()

    if name.empty?()
      prompt("Please enter your name.")
    else
      break
    end
  end
  name
end

def player_choice
  player_choice = ''

  loop do
    prompt("Make a choice: #{VALID_MOVES.join(', ')}")
    player_choice = gets().chomp()

    if VALID_MOVES.include?(player_choice) 
      break
    else
      prompt("Please enter a valid move!")
    end
  end
  player_choice
end

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
  (first == 'paper' && second == 'rock') ||
  (first == 'scissors' && second == 'paper')
end

def detect_winner(player, computer)
  if win?(player, computer)
    "You won!"
  elsif win?(computer, player)
    "Computer won!"
  else
    "It's a tie"
  end
end


################################################################################

prompt("Welcome to the Rock, Paper, Scissors Game. Enter your name:")

name = valid_name

prompt("Welcome #{name}")

loop do
  player_score = 0
  computer_score = 0

  loop do
    prompt("Player: #{player_score} Computer: #{computer_score}")
    choice = player_choice
    computer_choice = VALID_MOVES.sample

    prompt("You chose: #{choice} and computer chose: #{computer_choice}")

    prompt(detect_winner(choice, computer_choice))

    score = detect_winner(choice, computer_choice)

    if score == "You won!"
      player_score += 1
    elsif score == "Computer won!"
      computer_score += 1
    end

    break if player_score == 2 || computer_score == 2
  end

  prompt("Do you want to play again?")
  answer = gets().chomp()
  break unless answer == 'yes' || answer == 'y'
end



















