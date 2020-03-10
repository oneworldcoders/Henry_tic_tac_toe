require "./spec/spec_helper"
require "./lib/tic_tac_toe/board"

describe TicTacToe::Board do
    describe "#show_rules" do
        it "shows rules when the game starts" do
            board = TicTacToe::Board.new
             expect {board.show_rules}.to output("Welcome to Tic Tac Toe!\nThese are the diffenrent move positions you can make:\n|1|2|3|\n|4|5|6|\n|7|8|9|\n\n").to_stdout
        end
    end

    describe "#check" do
        it "checks an empty position" do
            board = TicTacToe::Board.new

            expect(board.check(0, 0, '1')).to eq(true)
        end

        it "returns false when a box does not have a symbol" do
            board = TicTacToe::Board.new

            expect(board.check(0, 0, "x")).to eq(false)
        end

        it "returns true when a box does have a symbol" do
            board = TicTacToe::Board.new

            board.move("1", "x")

            expect(board.check(0, 0, "x")).to eq(true)
        end
    end

    describe "#show rows" do
        it "shows all rows of game board" do
            board = TicTacToe::Board.new
            expect {board.show}.to output("| | | |\n| | | |\n| | | |\n").to_stdout
        end
    end
end

