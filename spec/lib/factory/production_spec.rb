require 'factory/production'

RSpec.describe Factory::Production do
  describe '#build_batch' do
    let(:robot) { instance_double(Repositories::Robot) }
    before do
      allow(Factory::Robot).to receive(:build).and_return(robot)
      expect(Factory::Randomiser).to receive(:number).with(10..1000).and_return(11)
    end

    subject(:batch) { described_class.build_batch }

    it 'returns an array of robot' do
      expect(batch.count).to eq 11
      expect(batch).to include robot
    end
  end
end
