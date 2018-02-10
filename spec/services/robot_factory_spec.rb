require 'rails_helper'

RSpec.describe Services::RobotFactory do
  describe '.build_batch' do
    subject(:batch) { described_class.build_batch }

    let(:batch_quantity) { 2 }

    it 'returns an array of robot' do
      expect(Factory::Randomiser).to receive(:number).with(10..1000).and_return(batch_quantity)
      expect(Robot).to receive(:create_with).and_return(Robot.new).exactly(batch_quantity).times
      expect(batch.count).to eq batch_quantity
    end
  end
end
