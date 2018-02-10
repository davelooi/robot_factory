require 'factory/robot'
require 'rspec/its'

RSpec.describe Factory::Robot do
  describe '#build' do
    let(:robot) { described_class.build }

    context 'name' do
      subject { robot }

      its(:name) { is_expected.to_not be_nil }
    end

    context 'condition' do
      subject { robot.condition }

      before { allow(Factory::Randomiser).to receive(:boolean).and_return(true) }

      its(:on_fire) { is_expected.to be_truthy }
      its(:rusty) { is_expected.to be_truthy }
      its(:loose_screws) { is_expected.to be_truthy }
      its(:paint_scratched) { is_expected.to be_truthy }
    end

    context 'configuration' do
      subject { robot.configuration }

      before do
        allow(Factory::Randomiser).to receive(:boolean).and_return(true)
        allow(Factory::Randomiser).to receive(:number).and_return(5)
        allow(Factory::Randomiser).to receive(:colour).and_return('green')
      end

      its(:has_sentience) { is_expected.to be_truthy }
      its(:has_wheels) { is_expected.to be_truthy }
      its(:has_tracks) { is_expected.to be_truthy }
      its(:num_of_rotors) { is_expected.to eq 5 }
      its(:colour) { is_expected.to eq 'green' }
    end
  end
end
