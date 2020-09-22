require 'pry'
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #top rows
  [3,4,5], #midd rows
  [6,7,8], #bottom rows
  [0,3,6], #first column
  [1,4,7], #second columns
  [2,5,8], #third columns
  [0,4,8], #diag RtoL
  [6,4,2] #diag LtoR
]

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
win = WIN_COMBINATIONS[0]
win_index_1 = win[0]
win_index_2 = win[1]
win_index_3 = win[2]

position_1 = board[win_index_1]
position_2 = board[win_index_2]
position_3 = board[win_index_3]



def won?(board)
  #binding.pry
#I want to find winningg combos that have matching index values
  WIN_COMBINATIONS.detect{|combo| combo.match?}
  if position_1 == "X" && position_2 == "X" && position_3 == "X"
    return win
  else
    false
   end
end

def full?(board)
  board.detect{|e| e.empty?}
  false
end

#if board.all?{|e| e.match? == WIN_COMBINATIONS}
  #true
  #  board.detects{|i| i.win?}
    #true#

    #if win.detect{|i| i.match?}
    ##end
    # if board is full and not winner its true that its a draw
    #board.each{|e| e.full}
    #true

#  board.each{|i| i.empty?}
#  false
