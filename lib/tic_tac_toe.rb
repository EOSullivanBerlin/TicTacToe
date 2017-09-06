require 'rules'
class Tic_Tac_Toe

  attr_reader :grid

  def initialize(rules = Rules.new)
    @grid = [[0, 0, 0],
            [0, 0, 0],
            [0, 0, 0]]
    @rules = Rules.new
  end

  def claim_field(x_axis, y_axis, players_token)
    return "The Game is a draw"  if grid_full?
    return "Sorry that field is taken!" if @grid[x_axis][y_axis] == 1 || @grid[x_axis][y_axis] == -1
     @grid[x_axis][y_axis] = players_token
  end

  def rules
    @rules.update_grid(@grid)
    return "X wins with a hip horozontal!" if @rules.all_possible_horozontail_wins_X?
    return "X wins with a virtuous vertical!" if @rules.all_possibel_vertical_wins_X?
    return "X wins with a devastating diagonal!" if @rules.diagonal_win_X?
    return "O wins with a hip horozontal!" if @rules.all_possible_horozontail_wins_O?
    return "O wins with a virtuous vertical!" if @rules.all_possibel_vertical_wins_O?
    return "O wins with a devastating diagonal!" if @rules.diagonal_win_O?
  end

  def grid_full?
    to_return = true
    @grid.each {|inner_array| inner_array.each {|field| to_return = false if field == 0}}
    to_return
  end

end
