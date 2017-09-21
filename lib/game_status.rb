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
]
