# game board array
#
# current players turn, X ? marker = O : marker = X
#
# array.map { [2] == " " ? [2] X : }
#
#
# arr = [" ", " "]
class Game
  attr_reader :board_arr, :player

  def initialize
    @board_arr = []
    @player = "X"
  end

  def switch_player
    @player == "X" ? @player = "O" : @player = "X"
  end

end
