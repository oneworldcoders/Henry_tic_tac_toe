=begin
Winning patterns
  #horizontal wins
  [0][0], [0][1], [0][2]
  [1][0], [1][1], [1][2]
  [2][0], [2][1], [2][2]

  #vertical wins
  [0][0], [1][0], [2][0]
  [0][1], [1][1], [2][1]
  [0][2], [1][2], [2][2]

  #diagonal wins
  [0][0], [1][1], [2][2]
  [0][2], [1][1], [2][0]
=end
module TicTacToe
  class Board
    def initialize
      @boxNumbers = [
        ["1", "2", "3"],
        ["4", "5", "6"],
        ["7", "8", "9"]
      ]
      @top_row = "| | | |"
      @mid_row = "| | | |"
      @bot_row = "| | | |"
  
      @rules = ["|1|2|3|", "|4|5|6|", "|7|8|9|"]
    end
  
    def show
      puts @top_row
      puts @mid_row
      puts @bot_row
    end
  
    def show_rules
      puts "Welcome to Tic Tac Toe!"
      puts "These are the diffenrent move positions you can make:"
      puts @rules, ""
    end
  
    def check_box_for_player(a, b, player)
      @boxNumbers[a][b] == player
    end

    def validate(position)
      position == @boxNumbers[0][0]
    end

  
    def move(position, player)
      case position
      when "1"
        @boxNumbers[0][0] = player
        @top_row[1] = player
      when "2"
        @boxNumbers[0][1] = player
        @top_row[3] = player
      when "3"
        @boxNumbers[0][2] = player
        @top_row[5] = player
      when "4"
        @boxNumbers[1][0] = player
        @mid_row[1] = player
      when "5"
        @boxNumbers[1][1] = player
        @mid_row[3] = player
      when "6"
        @boxNumbers[1][2] = player
        @mid_row[5] = player
      when "7"
        @boxNumbers[2][0] = player
        @bot_row[1] = player
      when "8"
        @boxNumbers[2][1] = player
        @bot_row[3] = player
      when "9"
        @boxNumbers[2][2] = player
        @bot_row[5] = player
      end
    end
  
    def win(player)
      #horizontal wins
      return true if (0..2).all? { |i| check_box_for_player(0, i, player) }
      return true if (0..2).all? { |i| check_box_for_player(1, i, player) }
      return true if (0..2).all? { |i| check_box_for_player(2, i, player) }
      #vertical wins
      return true if (0..2).all? { |i| check_box_for_player(i, 0, player) }
      return true if (0..2).all? { |i| check_box_for_player(i, 1, player) }
      return true if (0..2).all? { |i| check_box_for_player(i, 2, player) }
      #diagonal wins
      return true if (0..2).all? { |i| check_box_for_player(i, i, player) }
      return true if (0..2).all? { |i| check_box_for_player(i, 2 - i, player) }
    end
  end
end
  
  

  
  