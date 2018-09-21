require 'game'

describe Game do
  subject(:game) { described_class.new(player1, player2) }
  let(:player1) { double :player }
  let(:player2) { double :player }

  context '#initialize' do
    it 'has a player 1 instance' do
      expect(game.player1).to eq player1
    end

    it 'has a player2 instance' do
      expect(game.player2).to eq player2
    end
  end

  context '#attack' do
    let(:harry) { double :player }
    let(:malfoy) { double :player }

    it 'causes damage to player' do
      expect(malfoy).to receive(:receive_damage)
      game.attack(malfoy)
    end
  end
end
