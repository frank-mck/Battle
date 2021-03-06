require 'player'

describe Player do
  let(:charlotte) { Player.new('Charlotte') }
  let(:mittens) { Player.new('Mittens') }

  describe '#name' do
    it 'returns the name' do
      expect(charlotte.name).to eq 'Charlotte'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(charlotte.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { charlotte.receive_damage }.to change { charlotte.hit_points }.by(-10)
    end
  end
 end