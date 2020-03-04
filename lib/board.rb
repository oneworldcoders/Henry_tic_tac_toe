class Board
    def initialize
        @boxes = ['','','','','','','','','']
    end

    def empty?
        true
    end

    def check(position)
        @boxes[position] == '' ? false : true
    end

    def move(symbol, position)
        @boxes[position] = symbol
    end
    def print
        puts    "  |  |  \n" +
                "_______ \n" +
                "  |  |  \n" +
                "_______ \n" +
                "  |  |  \n"
    end
end
