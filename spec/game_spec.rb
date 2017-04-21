require 'game'

  describe Game do
    let(:game) {described_class.new}
    # game = Game.new

    it "has a game board" do
      expect(game.board_arr).to_not be_nil
    end

    it "has a player" do
      expect(game.player).to eq("X")
    end

    describe "#switch_player"
      it "can switch player" do
        expect(game.switch_player).to eq("O")
      end

  end
