class Rules

  def update_grid(grid)
    @grid = grid
  end

  def all_possible_horozontail_wins_X?
    horozontail_win_X?(0) || horozontail_win_X?(1) || horozontail_win_X?(2)
  end

  def all_possibel_vertical_wins_X?
    vertical_win_X?(0) || vertical_win_X?(1) || vertical_win_X?(2)
  end

  def all_possibel_vertical_wins_O?
    vertical_win_O?(0) || vertical_win_O?(1) || vertical_win_O?(2)
  end

  def all_possible_horozontail_wins_O?
    horozontail_win_O?(0) || horozontail_win_O?(1) || horozontail_win_O?(2)
  end

  def horozontail_win_X?(row)
    return true if sum_row(row) == 3
    false
  end

  def horozontail_win_O?(row)
    return true if sum_row(row) == -3
    false
  end

  def vertical_win_X?(column)
    return true if sum_column(column) == 3
    false
  end

  def vertical_win_O?(column)
    return true if sum_column(column) == -3
    false
  end

  def diagonal_win_X?
     return true if diagonal_sum_top_to_bottom == 3 || diagonal_sum_bottom_to_top == 3
     false
  end

  def diagonal_win_O?
     return true if diagonal_sum_top_to_bottom == -3 || diagonal_sum_bottom_to_top == -3
     false
  end

  def diagonal_sum_top_to_bottom
      @grid[0][0] + @grid[1][1] + @grid[2][2]
  end

  def diagonal_sum_bottom_to_top
      @grid[2][0] + @grid[1][1] + @grid[0][2]
  end

  def sum_row(row)
    @grid[row].inject(0){|sum,x| sum + x }
  end

  def sum_column(column)
    @grid[0][column] + @grid[1][column] + @grid[2][column]
  end

end
