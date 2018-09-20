require 'player'

describe Player do
  subject(:player) { described_class.new('Picachu') }
  it 'returns its name' do
    expect(player.name).to eq 'Picachu'
  end
end
