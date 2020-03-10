require "./lib/run.rb"
require "./lib/tic_tac_toe/board"

class Fake_input
    def initialize(input, i = -1)
        @input = input
        @i = i
    end
    def gets
        @input[@i+=1]
    end
end
describe Run do
    describe "#run game" do
        it "should start game and display a players turn" do
            player = ["x", "o"]
            fake_input = Fake_input.new(["1", "2", "3", "4", "5", "6", "7", "8"])
            run = Run.new(fake_input)
            expect{run.start_game}.to output(include("It's Player #{player[0]}'s turn.")).to_stdout
        end 
    end
end
