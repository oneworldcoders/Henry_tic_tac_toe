require_relative "./tic_tac_toe/board"

class Run
    def initialize(input = STDIN)
        @input = input
    end

    def start_game 
        ttt = TicTacToe::Board.new
        player = ["x", "o"]

        ttt.show_rules

        loop do
        puts "It's Player #{player[0]}'s turn."
        input = @input.gets.chomp
        ttt.move input, player[0]
        ttt.show 
        break if ttt.win player[0]
        player[0], player[1] = player[1], player[0]
        end

        puts "Congrats, Player #{player[0]} you win 🎉🎉"
    end
end