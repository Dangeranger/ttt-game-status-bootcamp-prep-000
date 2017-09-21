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
  WIN_COMBINATIONS.each do |comb|
    start = comb.first
    comb.all? { |move| board[move] == 'X' || board[move] == 'O' }
  end
end
# 
# def check_for_win(board)
#   winner =
#   WIN_COMBINATIONS.each
# end
