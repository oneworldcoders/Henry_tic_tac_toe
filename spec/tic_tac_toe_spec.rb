describe "lib/tic_tac_toe.rb" do
  it 'prints "Welcome to Tic Tac Toe!"' do
      expect($stdout).to receive(:puts).with("Welcome to Tic Tac Toe!"), "Make sure lib/tic_tac_toe.rb has code that can output 'Welcome to Tic Tac Toe!' exactly."
      
      load './lib/tic_tac_toe.rb'
  end
end

