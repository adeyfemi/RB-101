SHORT_CHOICES = %w(r p x l sp)
VALID_CHOICES = %w(rock paper scissors lizard spock)
VALID_MOVES = {
  'rock': ['scissors','lizard'],
  'paper': ['rock','spock'],
  'scissors': ['paper','lizard'],
  'lizard': ['paper','spock'],
  'spock': ['rock','scissors']
}

def prompt(message)
  Kernel.puts(message)
end

def player_choice
  choice = ''

  loop do
    prompt("Choose one: #{VALID_CHOICES.join(' , ')} or #{SHORT_CHOICES.join('/')}")
    choice = Kernel.gets().chomp()

    if VALID_CHOICES.include?(choice) || SHORT_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
      prompt("You can use the following short cuts:
        r - rock,
        p - paper,
        x - scissors,
        l - lizard,
        sp - spock")
    end
  end
  choice
end

def validated_move(input)
  if input == 'r' || input == 'rock'
    input = 'rock'
  elsif input == 'p' || input == 'paper'
    input = 'paper'
  elsif input == 'x' || input == 'scissors'
    input = 'scissors'
  elsif input == 'l' || input == 'lizard'
    input = 'lizard'
  elsif input == 'sp' || input == 'spock'
    input = 'spock'
  else
    puts "Choose one of the options provided at start."
  end
end

def win?(first, second)
  if VALID_MOVES[first.to_sym].include?(second)
    'player'
  elsif first == second
    'tie'
  else
    'computer'
  end
end

def detect_winner(player, computer)
  if win?(player, computer)
    'player'
  elsif win?(computer, player)
    'computer'
  else
    'tie'
  end
end

def display_result(game_winner)
  if game_winner == 'player'
    prompt("You won!")
  elsif game_winner == 'computer'
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

# *******************************************************************************

loop do
  player_score = 0
  computer_score = 0

  loop do
    prompt("The game is first to 5!------GOODLUCK!!!")

    # display_choices
    
    player_move = player_choice
    computer_choice = VALID_CHOICES.sample
    lf_player_choice = validated_move(player_move)

    prompt("You chose: #{lf_player_choice}; Computer chose: #{computer_choice}")

    winner = detect_winner(lf_player_choice, computer_choice)
    display_result(winner)

    if winner == "player"
      player_score += 1
    elsif winner == "computer"
      computer_score += 1
    end

    if player_score == 5
      prompt("You win!. You are the grand winner!")
      break
    elsif computer_score == 5
      prompt("Computer wins. Computer is the grand winner!")
      break
    end
  end

  prompt("Player: #{player_score} vs CPU: #{computer_score}")

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp().downcase
  break if %(yes y no n)
  prompt("Wrong input...Please enter yes/y to replay or no/n to exit.")
end

prompt("Thank you for playing. Good bye!")

system('clear') || system('cls')


