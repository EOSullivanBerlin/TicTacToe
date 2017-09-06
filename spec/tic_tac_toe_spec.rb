require "spec_helper"
require "tic_tac_toe"

describe Tic_Tac_Toe do
  describe "#grid" do
    it "returns the grid" do
      game = Tic_Tac_Toe.new
      expect(game.grid).to eq([[0, 0, 0],
                              [0, 0, 0],
                              [0, 0, 0]])
    end
  end

  describe "#claim_field" do
    it "the first field can be claimed" do
      game = Tic_Tac_Toe.new
      game.claim_field(0, 0, 1)
      expect(game.grid).to eq([[1, 0, 0],
                              [0, 0, 0],
                              [0, 0, 0]])
    end
    it "the last field can be claimed" do
      game = Tic_Tac_Toe.new
      game.claim_field(2, 2, 1)
      expect(game.grid).to eq([[0, 0, 0],
                              [0, 0, 0],
                              [0, 0, 1]])
    end
  end

  describe '#rules for X' do
    it "X wins when there are three horozontail Xs in the first row" do
      game = Tic_Tac_Toe.new
      horozontail_win(0, 1, game)
      expect(game.rules).to eq("X wins with a hip horozontal!")
    end

    it "X wins when there are three horozontail Xs in the middle row" do
      game = Tic_Tac_Toe.new
      horozontail_win(1, 1, game)
      expect(game.rules).to eq("X wins with a hip horozontal!")
    end

    it "X wins when there are three horozontail Xs in the last row" do
      game = Tic_Tac_Toe.new
      horozontail_win(2, 1, game)
      expect(game.rules).to eq("X wins with a hip horozontal!")
    end

    it "X wins when there are three virtical Xs in the first column" do
      game = Tic_Tac_Toe.new
      vertical_win(0, 1, game)
      expect(game.rules).to eq("X wins with a virtuous vertical!")
    end

    it "X wins when there are three virtical Xs in the second column" do
      game = Tic_Tac_Toe.new
      vertical_win(1, 1, game)
      expect(game.rules).to eq("X wins with a virtuous vertical!")
    end

    it "X wins when there are three virtical Xs in the last column" do
      game = Tic_Tac_Toe.new
      vertical_win(2, 1, game)
      expect(game.rules).to eq("X wins with a virtuous vertical!")
    end

    it "X can win when it has three diagonal" do
      game = Tic_Tac_Toe.new
      diagonal_win_one(1, game)
      expect(game.rules).to eq("X wins with a devastating diagonal!")
    end

    it "X can win when it has three diagonal" do
      game = Tic_Tac_Toe.new
      diagonal_win_two(1, game)
      expect(game.rules).to eq("X wins with a devastating diagonal!")
    end
  end

  describe '#rules for Y' do
    it "O wins when there are three horozontail Os in the first row" do
      game = Tic_Tac_Toe.new
      horozontail_win(0, -1, game)
      expect(game.rules).to eq("O wins with a hip horozontal!")
    end

    it "O wins when there are three horozontail Os in the second row" do
      game = Tic_Tac_Toe.new
      horozontail_win(1, -1, game)
      expect(game.rules).to eq("O wins with a hip horozontal!")
    end

    it "O wins when there are three horozontail Os in the second row" do
      game = Tic_Tac_Toe.new
      horozontail_win(2, -1, game)
      expect(game.rules).to eq("O wins with a hip horozontal!")
    end

    it "O wins when there are three virtical Xs in the first column" do
      game = Tic_Tac_Toe.new
      vertical_win(0, -1, game)
      expect(game.rules).to eq("O wins with a virtuous vertical!")
    end

    it "O wins when there are three virtical Xs in the first column" do
      game = Tic_Tac_Toe.new
      vertical_win(1, -1, game)
      expect(game.rules).to eq("O wins with a virtuous vertical!")
    end

    it "O wins when there are three virtical Xs in the first column" do
      game = Tic_Tac_Toe.new
      vertical_win(2, -1, game)
      expect(game.rules).to eq("O wins with a virtuous vertical!")
    end

    it "O can win when it has three diagonal" do
      game = Tic_Tac_Toe.new
      diagonal_win_one(-1, game)
      expect(game.rules).to eq("O wins with a devastating diagonal!")
    end

    it "O can win when it has three diagonal" do
      game = Tic_Tac_Toe.new
      diagonal_win_two(-1, game)
      expect(game.rules).to eq("O wins with a devastating diagonal!")
    end
  end

  def vertical_win(column, player_token, game)
    game.claim_field(0, column, player_token)
    game.claim_field(1, column, player_token)
    game.claim_field(2, column, player_token)
  end

  def horozontail_win(row, player_token, game)
    game.claim_field(row, 0, player_token)
    game.claim_field(row, 1, player_token)
    game.claim_field(row, 2, player_token)
  end

  def diagonal_win_one(player_token, game)
    game.claim_field(0, 0, player_token)
    game.claim_field(1, 1, player_token)
    game.claim_field(2, 2, player_token)
  end

  def diagonal_win_two(player_token, game)
    game.claim_field(0, 2, player_token)
    game.claim_field(1, 1, player_token)
    game.claim_field(2, 0, player_token)
  end
end
