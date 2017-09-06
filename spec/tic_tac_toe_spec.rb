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

  describe '#rules' do
    it ""
  end
end
