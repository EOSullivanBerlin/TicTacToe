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
end
