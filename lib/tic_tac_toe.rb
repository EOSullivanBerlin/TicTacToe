class Tic_Tac_Toe
  attr_reader :grid
  def initialize
    @grid = [[0, 0, 0],
            [0, 0, 0],
            [0, 0, 0]]
  end

  def claim_field(x_axis, y_axis, players_token)
     @grid[x_axis][y_axis] = players_token
  end

  def rules
  return "X wins with a sick horozontal!" if all_possible_horozontail_wins_X?
  return "X wins with a devastating vertical!" if all_possibel_vertical_wins_X?
  end



  private

  def all_possible_horozontail_wins_X?
    horozontail_win_X?(0) || horozontail_win_X?(1) || horozontail_win_X?(2)
  end

  def all_possibel_vertical_wins_X?
    vertical_win_X?(0) || vertical_win_X?(1) || vertical_win_X?(2)
  end

  def vertical_win_X?(column)
    return true if sum_column(column) == 3
    false
  end

  def horozontail_win_X?(row)
    return true if sum_row(row) == 3
    false
  end

  def sum_row(row)
    @grid[row].inject(0){|sum,x| sum + x }
  end

  def sum_column(column)
    @grid[0][column] + @grid[1][column] + @grid[2][column]
  end

end
