require 'rails_helper'
require 'rspec/its'

RSpec.describe Robot, type: :model do
  describe '.create_with' do
    subject(:robot) do
      described_class.create_with(
        name: name,
        configuration: configuration,
        condition: condition,
      )
    end

    let(:name) { 'BB-8' }
    let(:configuration) do
      Factory::FixedConfiguration.new(
        has_sentience: true,
        has_wheels: true,
        has_tracks: true,
        num_of_rotors: 5,
        colour: 'purple',
      )
    end
    let(:condition) do
      Factory::FixedCondition.new(
        on_fire: true,
        rusty: true,
        loose_screws: true,
        paint_scratched: true,
      )
    end

    it 'returns a Robot object' do
      expect(robot.is_a?(Robot)).to be_truthy
    end

    context 'attributes' do
      its(:id) { is_expected.to_not be_nil }
      its(:name) { is_expected.to eq 'BB-8' }
      its(:on_fire) { is_expected.to be_truthy }
      its(:rusty) { is_expected.to be_truthy }
      its(:loose_screws) { is_expected.to be_truthy }
      its(:paint_scratched) { is_expected.to be_truthy }
    end

    context 'configuration' do
      subject { robot.configuration }

      its(:has_sentience) { is_expected.to be_truthy }
      its(:has_wheels) { is_expected.to be_truthy }
      its(:has_tracks) { is_expected.to be_truthy }
      its(:num_of_rotors) { is_expected.to eq 5 }
      its(:colour) { is_expected.to eq 'purple' }
    end
  end
end
