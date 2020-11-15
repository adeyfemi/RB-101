# user makes a choice
# computer makes a choice
# winner is displayed

VALID_CHOICES = %w(rock paper scissors spock lizard)
ABBREVIATED_CHOICES = %w(r p s sp l)
MOVES = {
  'rock': ['scissors', 'lizard'],
  'paper': ['rock', 'spock'],
  'scissors': ['paper', 'lizard'],
  'lizard': ['paper', 'spock'],
  'spock': ['scissors', 'rock']
}

GAMES = 5

def prompt(message)
  puts("=> #{message}")
end

def welcome_msg
  prompt("You are now playing Rock, Paper, Scissors, Spock, Lizard")
end

def display_choices_msg
  prompt("Below are your choices and the game is up to #{GAMES}:")
end

def display_choices
  choice_prompt = <<-MSG
  1) rock (r)
  2) paper (p)
  3) scissors (s)
  4) spock (sp)
  5) lizard (l)
  MSG
  puts choice_prompt
end

def valid_choice?(choice)
  VALID_CHOICES.include?(choice) || ABBREVIATED_CHOICES.include?(choice)
end

def convert_to_long_choice(choice)
  index = ABBREVIATED_CHOICES.index(choice)
  index ? VALID_CHOICES[index] : choice
end

def win?(first, second)
  if first == second
    'tie'
  elsif MOVES[first.to_sym].include?(second)
    'player'
  else
    'computer'
  end
end

def display_result(winner)
  if winner == 'player'
    prompt("You won!")
  elsif winner == 'computer'
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

def player_choice
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')} or use abbreviations:")
    choice = gets.chomp.strip.downcase

    break convert_to_long_choice(choice) if valid_choice?(choice)
    prompt("That's not a valid choice.")
  end
end

def ask_computer_choice
  VALID_CHOICES.sample
end

def game_won?(score)
  score[:player] == 5 || score[:computer] == 5
end

def update_score(score, winner)
  score[winner.to_sym] += 1
end

def display_score(score)
  prompt("PLAYER: #{score[:player]} - COMPUTER: #{score[:computer]}")
end

loop do
  system('clear') || system('cls')
  welcome_msg
  score = {player: 0, computer: 0}
  
  loop do
    display_choices_msg
    display_choices

    choice = player_choice
    computer_choice = ask_computer_choice
    prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

    winner = win?(choice, computer_choice)
    display_result(winner)

    update_score(score, winner) unless winner == 'tie'

    break if game_won?(score)
    display_score(score)
  end

  prompt("Do you want to play again?")
  answer = gets.chomp
  break unless %w(y yes).include?(answer)
end

prompt("Thank you for playing. Goodbye!")
