require 'game'
require 'Player'
describe Game do 
  subject(:game) { Game.new(player_1, player_2) }
  let(:player_1) { instance_double("Player") }
  let(:player_2) { instance_double("Player") }

  it "contains an instance of 2 players" do
    expect(game.players).to be_an_instance_of(Array)
  end

  it "has a current player that is initially defined as player2" do
    expect(game.current_player).to eq player_2
  end 

  describe "#attack" do
    it "can attack a player" do
      expect(player_1).to respond_to(:be_attacked)
      game.attack(player_1)
    end
  #  it "it takes ten hp off the player" do
  #    you = Person.new
  #    expect{ game.attack(player_double) }.to change { player_double.hp }.by(-10)
  #  end
end

  describe "switch turns" do 
    it "switches turnes after the attack" do 
      game.attack(player_1)
      expect(game.switch_turns).to eq player_1
    end 
  end 

end