require 'rails_helper'

RSpec.describe Services::RobotFactory do
  describe '.build_batch' do
    let(:robot) { Robot.new }
    let(:num_of_robots) { 11 }
    before { allow(Robot).to receive(:create_with).and_return(robot) }

    subject(:batch) { described_class.build_batch(num_of_robots: num_of_robots) }

    it 'returns an array of robot' do
      expect(batch.count).to eq num_of_robots
      expect(batch).to include robot
    end
  end
end
