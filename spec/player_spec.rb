require 'player'

describe Player do
  subject(:harry) { described_class.new('Harry') }
  subject(:malfoy) { described_class.new('Malfoy') }

  describe '#name' do
    it 'returns its name' do
      expect(harry.name).to eq 'Harry'
    end
  end

  describe '#hitpoints' do
    it 'returns hitpoints' do
      expect(harry.hitpoints).to eq described_class::DEFAULT_HITPOINTS
    end
  end

  describe '#attack' do
    it 'causes damage to player' do
      expect(malfoy).to receive(:receive_damage)
      harry.attack(malfoy)
    end
  end

  it 'reduces player 2 hp by 10' do
    expect{ harry.attack(malfoy) }.to change{ malfoy.hitpoints }.by(-10)
  end
end
