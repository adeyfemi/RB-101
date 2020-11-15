# => Walkthrough: Tic Tac Toe

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [3, 5, 7]]

def prompt(msg)
  puts "=> #{msg}"
end

# Step 1: Set up and display the board
# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts "You're a #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
  puts ""
  puts ".....|.....|"
  puts "..#{brd[1]}..|..#{brd[2]}..|..#{brd[3]}"
  puts ".....|.....|"
  puts "-----+-----+-----"
  puts ".....|.....|"
  puts "..#{brd[4]}..|..#{brd[5]}..|..#{brd[6]}"
  puts ".....|.....|"
  puts "-----+-----+-----"
  puts ".....|.....|"
  puts "..#{brd[7]}..|..#{brd[8]}..|..#{brd[9]}"
  puts ".....|.....|"
  puts ""
end
# rubocop:enable Metrics/AbcSize

# Setting up the initial board to begin game play
def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor(arr, delimiter=', ', word='or')
  case arr.size
  when 0 then ''
  when 1 then arr.first
  when 2 then arr.join (" #{word} ")
  else
    arr[-1] = "#{word} #{arr.last}"
    arr.join(delimiter)
  end
end

# def joinor(arr, delimit=', ', word='or')
#   string_arr = []
#   arr.join(" #{delimit}").split(" #{delimit}")
#   arr.each do |char|
#     char == arr[-1] && arr.size > 1 ? string_arr << "#{word} #{char}" : string_arr << char
#   end
#   string_arr.size > 2 ? string_arr.join("#{delimit}") : string_arr.join('')
# end

# Step2: Player turn
def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end
  brd[square] = PLAYER_MARKER
end

# Step 3: The main loop
def computer_places_piece!(brd)
  square = empty_squares(brd).sample
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
    # if brd[line[0]] == PLAYER_MARKER &&
    #    brd[line[1]] == PLAYER_MARKER &&
    #    brd[line[2]] == PLAYER_MARKER
    #   return 'Player'
    # elsif brd[line[0]] == COMPUTER_MARKER &&
    #       brd[line[1]] == COMPUTER_MARKER &&
    #       brd[line[2]] == COMPUTER_MARKER
    #   return 'Computer'
    # end
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

loop do
  board = initialize_board
  display_board(board)
  player_score = 0
  computer_score = 0

  loop do
    display_board(board)
    player_places_piece!(board)
    break if someone_won?(board) || board_full?(board)

    computer_places_piece!(board)
    break if someone_won?(board) || board_full?(board)
  end

  display_board(board)

  # Step 4: Determining the winner
  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
  else
    prompt "It's a tie!"
  end

  if detect_winner(board) == 'Player'
    player_score += 1
  elsif detect_winner(board) == 'Computer won!'
    computer_score += 1
  end
  if player_score == 5
    break
  elsif computer_score == 5
    break
  end

  prompt("Player: #{player_score} vs CPU: #{computer_score}")

  # Step 5: Play again
  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end
