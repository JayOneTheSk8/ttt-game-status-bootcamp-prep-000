# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [2, 4, 6],
  [0, 4, 8]
]

def won?(board)
  board.all? do |space|
    space == " "
  end
  WIN_COMBINATIONS.select do |combo|
    i = combo[0]
    j = combo[1]
    k = combo[2]

    p1 = board[i]
    p2 = board[j]
    p3 = board[k]

    if board.none?{|space| space == " "}
      return false
    elsif board.all?{|space| space == " "}
      return false
    elsif p1 == "X" && p2 == "X" && p3 == "X"
      return combo
    elsif p1 == "O" && p2 == "O" && p3 == "O"
      return combo
    end
  end
end

def full?(board)
  if board.any?{|space| space == " "}
    return false
  else
    return true
  end
end
