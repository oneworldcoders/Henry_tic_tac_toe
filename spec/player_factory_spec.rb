# require "player_factory"

# describe PlayerFactory do

#   FIRST_ELEMENT = 0
#   SECOND_ELEMENT = 1
#   HUMAN_VS_HUMAN = 1

#   before :each do
#     PlayerFactory::HumanPlayer
#     # validator = Validator.new
#     input = StringIO.new("O\nxx\nX")
#     output = StringIO.new
#     # console = Console.new(output, input)
#     # display = Display.new(console, validator)
#     @player_factory = PlayerFactory.new(display)
#   end

#   it "returns a human player and a human player" do
#     choice = HUMAN_VS_HUMAN
#     players = @player_factory.set_up_players(choice)
#     expect(players[FIRST_ELEMENT]).to be_a(HumanPlayer)
#     expect(players[SECOND_ELEMENT]).to be_a(HumanPlayer)
#   end

# end
