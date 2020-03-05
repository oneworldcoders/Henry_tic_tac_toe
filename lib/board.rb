class Board
    def initialize
        @board = ['','','','','','','','','']
    end

    def empty?
        true
    end

    def check(position)
        @board[position] == '' ? false : true
    end

    def move(symbol, position)
        @board[position] = symbol
    end
    def print
        puts    "  |  |  \n" +
                "_______ \n" +
                "  |  |  \n" +
                "_______ \n" +
                "  |  |  \n"
    end
end
