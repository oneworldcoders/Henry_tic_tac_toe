require "minitest/autorun"
require_relative '../lib/tic_tac_toe'
 
describe Game do
    before do
      @game = Game.new
    end
 
  describe 'when asked the name of the game' do
    it 'must respond positively' do
        @game.what_is_the_name_of_the_game?.must_equal "Welcome to Tic-Tac-Toe"
    end
  end
 
end
