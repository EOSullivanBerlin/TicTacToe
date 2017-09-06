require 'rules'

describe Rules do

  describe "#sum_row"  do
    it "sums a row" do
      rules = Rules.new
      rules.update_grid([[1, 1, 1],[0, 0, 0],[0, 0, 0]])
      expect(rules.sum_row(0)).to eq(3)
    end
  end

  describe "#sum_column"  do
    it "sums a column" do
      rules = Rules.new
      rules.update_grid([[1, 0, 0],[1, 0, 0],[1, 0, 0]])
      expect(rules.sum_column(0)).to eq(3)
    end
  end

  describe "#diagonal_sum_bottom_to_top" do
    it "sums diagonal" do
    rules = Rules.new
    rules.update_grid([[1, 0, 0],[0, 1, 0],[0, 0, 1]])
    expect(rules.diagonal_sum_top_to_bottom).to eq(3)
    end
  end

  describe "#diagonal_sum_bottom_to_top" do
    it "sums diagonal" do
    rules = Rules.new
    rules.update_grid([[0, 0, 1],[0, 1, 0],[1, 0, 0]])
    expect(rules.diagonal_sum_bottom_to_top).to eq(3)
    end
  end

  describe "#diagonal_win_X?" do
    it "returns ture if a diagonal exisits" do
      rules = Rules.new
      rules.update_grid([[0, 0, 1],[0, 1, 0],[1, 0, 0]])
      expect(rules.diagonal_win_X?).to eq(true)
    end
  end

  describe "#diagonal_win_O?" do
    it "returns ture if a diagonal exisits" do
      rules = Rules.new
      rules.update_grid([[0, 0, -1],[0, -1, 0],[-1, 0, 0]])
      expect(rules.diagonal_win_O?).to eq(true)
    end
  end

  describe "#vertical_win_O?" do
    it "returns ture if a horozontal O column" do
      rules = Rules.new
      rules.update_grid([[-1, 0, 0],[-1, 0, 0],[-1  , 0, 0]])
      expect(rules.vertical_win_O?(0)).to eq(true)
    end
  end

  describe "#vertical_win_X?" do
    it "returns ture if a horozontal X column" do
      rules = Rules.new
      rules.update_grid([[1, 0, 0],[1, 0, 0],[1, 0, 0]])
      expect(rules.vertical_win_X?(0)).to eq(true)
    end
  end

  describe "#horozontail_win_O?" do
    it "returns ture if a horozontal O column" do
      rules = Rules.new
      rules.update_grid([[-1, -1, -1],[0, 0, 0],[0, 0, 0]])
      expect(rules.horozontail_win_O?(0)).to eq(true)
    end
  end

  describe "#horozontail_win_X?" do
    it "returns ture if a horozontal X column" do
      rules = Rules.new
      rules.update_grid([[1, 1, 1],[0, 0, 0],[0, 0, 0]])
      expect(rules.horozontail_win_X?(0)).to eq(true)
    end
  end

  describe "#all_possible_horozontail_wins_O?" do
    it "returns ture if a horozontal O column" do
      rules = Rules.new
      rules.update_grid([[-1, -1, -1],[0, 0, 0],[0, 0, 0]])
      expect(rules.all_possible_horozontail_wins_O?).to eq(true)
    end
  end

  describe "#all_possibel_vertical_wins_O?" do
    it "returns ture if a vertical O column" do
      rules = Rules.new
      rules.update_grid([[-1, 0, 0],[-1, 0, 0],[-1, 0, 0]])
      expect(rules.all_possibel_vertical_wins_O?).to eq(true)
    end
  end

  describe "#all_possibel_vertical_wins_X?" do
    it "returns ture if a vertical X column" do
      rules = Rules.new
      rules.update_grid([[1, 0, 0],[1, 0, 0],[1, 0, 0]])
      expect(rules.all_possibel_vertical_wins_X?).to eq(true)
    end
  end

  describe "#all_possible_horozontail_wins_X?" do
    it "returns ture if a horozontail X column" do
      rules = Rules.new
      rules.update_grid([[1, 1, 1],[0, 0, 0],[0, 0, 0]])
      expect(rules.all_possible_horozontail_wins_X?).to eq(true)
    end
  end


end
