require "display_board"

describe DisplayBoard do
  it "presents board" do
    output = StringIO.new
    console = Console.new(output)
    grid = [0, 1, 2, 3, 4, 5, 6, 7, 8]
    board = Board.new(grid)
    display_board = DisplayBoard.new(console)
    display_board.present_board(board)
    expect(output.string).to eql(" 0 | 1 | 2 \n===+===+===\n 3 | 4 | 5 \n===+===+===\n 6 | 7 | 8 \n")
  end
end
