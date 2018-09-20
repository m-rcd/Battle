require 'game'

describe Game do
  describe '#attack' do
    subject(:game) { described_class.new }
    let(:harry) { double :player }
    let(:malfoy) { double :player }

    it 'causes damage to player' do
      expect(malfoy).to receive(:receive_damage)
      game.attack(malfoy)
    end
  end
end
