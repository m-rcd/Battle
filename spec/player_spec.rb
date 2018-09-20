require 'player'

describe Player do
  subject(:harry) { described_class.new('Harry') }
  subject(:malfoy) { described_class.new('Malfoy') }
  let(:game) { double :game, attack: true}
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

  it 'reduces player 2 hp by 10' do
    expect{ malfoy.receive_damage }.to change{ malfoy.hitpoints }.by(-10)
  end

end
