require "spec_helper"
require "./lib/board"

describe "Board" do
    describe "#empty?" do
      it "is true when a board is empty" do
        board = Board.new

        expect(board.empty?).to eq(true)
      end

      it "is false when a board has one move" do
        board = Board.new

        board.move('X', 0)

        expect(board.empty?).to eq(true)
      end
    end

    describe "#move" do
      it "places a move on the board" do
        board = Board.new

        board.move('X', 0)

        expect(board.check(0)).to eq(true)
      end
    end

    describe "#check" do
      it "shows the box has not been occupied" do
        board = Board.new

        expect(board.check(0)).to eq(false)
      end

      it "shows the box has been occupied" do
        board = Board.new

        board.move('X', 0)

        expect(board.check(0)).to eq(true)
      end
    end
    describe "#print" do
      it "prints an empty board" do
        board = Board.new

        expect { board.print }.to output( "  |  |  \n" +
                                          "_______ \n" +
                                          "  |  |  \n" +
                                          "_______ \n" +
                                          "  |  |  \n").to_stdout
      end
    end
  end

 