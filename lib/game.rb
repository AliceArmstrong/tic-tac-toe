# game board array
#
# current players turn, X ? marker = O : marker = X
#
# array.map { [2] == " " ? [2] X : }
#
#
# arr = [" ", " "]
#
# winning combinations?


class Game
  attr_reader :board_arr, :player

  def initialize
    @board_arr = [" "," "," ",
                  " "," "," ",
                  " "," "," "]
    @player = "X"
  end

  def switch_player
    @player == "X" ? @player = "O" : @player = "X"
  end

  def choose_space(index)
    fail "Space already occupied" if @board_arr[index] == "X" || @board_arr[index] == "O"
    mark_space(index)
  end

  def mark_space(index)
    { @board_arr[index] == " " ? @board_arr[index] = @player : @board_arr[index] = " " }
    switch_player
  end

  def game_over?
    true if win? || grid_full?
  end

  def win?
    true if winning_combinations == true
  end

  def grid_full?
    true if (@board_arr.join('').size) == 9
  end

  def winning_combinations
    if (@board_arr[0] == @board_arr[1] && @board_arr[0] == @board_arr[2])
      true
    elsif (@board_arr[0] == @board_arr[4] && @board_arr[0] == @board_arr[8])
      true
    end
  end

end

# 0 1 2
# 3 4 5
# 6 7 8
