# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# First horizontal combinations
# Then vertical combinations
# Then diagonal combinations
WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [6, 4, 2]
]

def won?(board)
  WIN_COMBINATIONS.any? do |comb|
    result = comb.reduce('') do |string, mark|
      string << board[mark]
    end
    return comb if result == 'XXX' || result == 'OOO'
  end
end

def full?(board)
  return true if board.any? { |move| move == ' '}
end
