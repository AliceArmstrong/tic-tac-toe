def fill_game_with_draw
  game.choose_space(0)
  game.choose_space(1)
  game.choose_space(2)
  game.choose_space(3)
  game.choose_space(4)
  game.choose_space(5)
  game.choose_space(6)
  game.choose_space(7)
  game.choose_space(8)
end

def fill_game_with_win
  game.choose_space(0)
  game.choose_space(5)
  game.choose_space(4)
  game.choose_space(7)
  game.choose_space(8)
end
