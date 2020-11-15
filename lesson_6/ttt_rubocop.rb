# Walkthrough: Tic Tac Toe

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1,2,3], [4,5,6], [7,8,9]] + 
                [[1,4,7], [2,5,8], [3,6,9]] + 
                [[1,5,9], [3,5,7]]

def prompt(msg)
  puts "=> #{msg}"
end

# Step 1: Set up and display the board

# rubocop: disable Metrics/MethodLength, Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts ""
  puts ".....|.....|"
  puts "..#{brd[1]}..|..#{brd[2]}..|..#{brd[3]}.."
  puts ".....|.....|"
  puts "-----+-----+-----"
  puts ".....|.....|"
  puts "..#{brd[4]}..|..#{brd[5]}..|..#{brd[6]}.."
  puts ".....|.....|"
  puts "-----+-----+-----"
  puts ".....|.....|"
  puts "..#{brd[7]}..|..#{brd[8]}..|..#{brd[9]}.."
  puts ".....|.....|"
  puts ""
end
# rubocop: enable Metrics/MethodLength, Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

# Step 2: Player turn
# want to nmodify the state of the board to mutate the object and the change will be visible outside of the method
# issues to resolve: allow only inputs up to 9, and can only input a key once

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_places_piece!(brd)
  square = ''
  puts "You're a #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
  loop do
    prompt "Choose a square (#{empty_squares(brd).join(', ')}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square) 
    prompt "Sorry, that's not a valid choice."
  end
  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  square = empty_squares(brd).sample
  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  # empty_squares(brd) == []
  empty_squares(brd).empty?
end

# Step 4: Determining the winner

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
    # if brd.values_at(line[0], line[1], line[2]).count(PLAYER_MARKER) == 3
    #   return 'Player'
    # elsif brd.values_at(line[0], line[1], line[2]).count(COMPUTER_MARKER) == 3
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

# Step 3: The main game loop

loop do
  board = initialize_board

  loop do
    display_board(board)
    player_places_piece!(board)
    break if someone_won?(board) || board_full?(board)
    computer_places_piece!(board)
    # puts board.inspect
    break if someone_won?(board) || board_full?(board) # need to detect winner inbetween moves
  end

  display_board(board)

  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
  else
    prompt "It's a tie!"
  end

  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing Tic Tac Toe! Goodbye!."







