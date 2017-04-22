require 'game'
require 'helpers'

  describe Game do
    let(:game) {described_class.new}
    game = Game.new

    it "has a game board" do
      expect(game.board_arr).to_not be_nil
    end

    it "has a player" do
      expect(game.player).to eq("X")
    end

    # describe "#switch_player"
      it "can switch player" do
        expect(game.switch_player).to eq("O")
      end

    # describe "#choose_space"
      it "can choose a space on the board" do

      end

    # describe "#mark_space"
      it "can choose a space and put a mark on the board" do
      expect(game.choose_space(3)).to include("X")
    end

    describe "#choose_space"
      it "raises an error if a space is already occupied" do
        game.choose_space(3)
      expect{game.choose_space(3)}.to raise_error("Space already occupied")
    end

    # describe "#game_over?"
      it "can check to see if the game is over when grid full" do
        fill_game_with_draw
        expect(game.game_over?).to eq(true)
      end

      # describe "#game_over?"
      it "can check to see if game can be ended by winning combination" do
        fill_game_with_win
        expect(game.game_over?).to eq(true)
      end

  end
