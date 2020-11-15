# Step 1 - set up and display the board
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                  [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                  [[1, 5, 9], [3, 5, 7]]

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
CHOOSE_FIRST_PLAYER = 'Choose'
GAME = 5

def prompt(msg)
  puts "=> #{msg}"
end

def display_welcome
  prompt("You are now playing TIC TAC TOE!")
end

def display_welcome_player
  prompt("Please enter your name: ")
  prompt("Welcome #{ask_for_name}")
end

def ask_for_name
  name = ''

  loop do
    name = gets.chomp.gsub(/\s+/, "")
    if name.empty?()
      prompt("Make sure you enter a valid name!")
    else
      break
    end
  end
  name
end

def who_goes_first?
  prompt("Who Goes First? - Choose P: Player or C: Computer ")
  loop do
    choice = gets.chomp.downcase
    if choice == 'p'
      return 'Player'
    elsif choice = 'c'
      return 'Computer'
    end
    break if choice == 'p' || choice == 'c'
    prompt "Please choose P or C"
  end
end

def first_mover
  if CHOOSE_FIRST_PLAYER == 'Choose'
    who_goes_first?
  elsif CHOOSE_FIRST_PLAYER == 'p'
    'Player'
  elsif CHOOSE_FIRST_PLAYER == 'c'
    'Computer'
  end
end

def alternate_player(current_player)
  current_player == 'Player' ? 'Computer' : 'Player'
end

# rubocop: disable Metrics/MethodLength, Metrics/AbcSize
def display_board(brd)
  # system 'clear'
  puts ""
  puts ".....|.....|"
  puts "..#{brd[1]}..|..#{brd[2]}..|. #{brd[3]}"
  puts ".....|.....|"
  puts "-----+-----+-----"
  puts ".....|.....|"
  puts "..#{brd[4]}..|..#{brd[5]}..|. #{brd[6]}"
  puts ".....|.....|"
  puts "-----+-----+-----"
  puts ".....|.....|"
  puts "..#{brd[7]}..|..#{brd[8]}..|. #{brd[9]}"
  puts ".....|.....|"
  puts ""
end
# rubocop: enable Metrics/MethodLength, Metrics/AbcSize

def initialize_baord
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board # this is the return value so you can call it through the display board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joiner(brd, split= ', ', connector='or')
  case brd.size
  when 0 then ''
  when 1 then brd.first
  when 2 then brd.join(" #{connector} ")
  else
    brd[-1] = "#{connector} #{brd.last}"
    brd.join(split)
  end
end

# Step 2 - player turn
def player_chooses_square(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joiner(empty_squares(brd))}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end
  square
end

def player_places_piece!(brd)
  square = player_chooses_square(brd)
  brd[square] = PLAYER_MARKER
end

def place_piece!(brd, current_player)
  if current_player == 'Player'
    player_places_piece!(brd)
  else
    computer_places_piece!(brd)
  end
end

def find_at_risk_square(line, brd, marker)
  if brd.values_at(*line).count(marker) == 2
    brd.select { |k, v| line.include?(k) && v == INITIAL_MARKER }.keys.first
    nil
  end
end

def computer_ai(brd, marker)
  square = ''

  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, brd, marker)
    break if square
  end
  square
end

def computer_places_piece!(brd)
  offense = computer_ai(brd, COMPUTER_MARKER)
  defense = computer_ai(brd, PLAYER_MARKER)
  random_square = empty_squares(brd).sample

  square = offense || defense || random_square
  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def display_current_winner(brd)
  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
  else
    prompt "It's a tie!"
  end
end

def revise_score(winner, scores)
  if winner == 'Player'
    scores[:Player] += 1
  elsif winner == 'Computer'
    scores[:Computer] += 1
  end
end

def show_score(scores)
  prompt ("The current score is --- Player: #{scores[:Player]} \
   Computer: #{scores[:Computer]}")
end

def active_game_done?(scores)
  scores[:Player] == GAME || scores[:Computer] == GAME
end

def overall_winner(scores)
  if scores[:Player] == GAME
    prompt("Player Wins!")
  elsif scores[:Computer] == GAME
    prompt("Computer Wins!")
  end
end

def play_again?
  choice = ''
  loop do
    prompt("Play Again? (y or n)")
    choice = gets.chomp
    break if %w(yes y no n).include?(choice)
    prompt("Please enter y to play again.")
  end
  choice == 'n' || choice == 'no'
end


def display_game_rules
  prompt("This game is up to #{GAME}")
end

def display_markers
  prompt("You're #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}")
end

display_welcome
display_welcome_player
display_game_rules
display_markers


loop do
  scores = {'Player': 0, 'Computer': 0}

  loop do
    board = initialize_baord
    current_player = first_mover
  
    loop do
      display_board(board)
      place_piece!(board, current_player)
      current_player = alternate_player(current_player)
      break if someone_won?(board) || board_full?(board)
    end

    display_board
    display_current_winner(board)
    revise_score(detect_winner(board), scores)
    show_score(scores)

    break if active_game_done?(scores)
  end

  overall_winner(scores)

  break if play_again?
end

prompt "Thanks for playing Tic Tac Toe! Goodbye!"
