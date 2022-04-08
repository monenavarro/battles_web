require 'player'

describe Player do
  subject(:joe) { Player.new('Joe') }
  subject(:mon) { Player.new('Mon') }

  describe '#name' do
    it 'returns the name' do
      expect(joe.name).to eq 'Joe'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(joe.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(mon).to receive(:receive_damage)
      joe.attack(mon)
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { joe.receive_damage }.to change { joe.hit_points }.by(-10)
    end
  end
end