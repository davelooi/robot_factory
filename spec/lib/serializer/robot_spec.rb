require 'factory/robot'
require 'serializer/robot'
require 'json'
require 'rspec/its'

RSpec.describe Serializer::Robot do
  describe '#to_h' do
    let(:hash) { Serializer::Robot.new(robot).to_h }

    let(:robot) do
      Repositories::Robot.with(
        name: 'BB-8',
        condition: condition,
        configuration: configuration,
      )
    end
    let(:configuration) do
      Repositories::Configuration.with(
        has_sentience: true,
        has_wheels: true,
        has_tracks: true,
        num_of_rotors: 5,
        colour: 'purple',
      )
    end
    let(:condition) do
      Repositories::Condition.with(
        on_fire: true,
        rusty: true,
        loose_screws: true,
        paint_scratched: true,
      )
    end

    it 'expect robot to be serialized' do
      expect(hash).to eq({
        'name' => 'BB-8',
        'configuration' => {
          'hasSentience' => true,
          'hasWheels' => true,
          'hasTracks' => true,
          'numberOfRotors' => 5,
          'colour' => 'purple',
        },
        'statuses' => ['on fire', 'rusty', 'loose screws', 'paint scratched'],
      })
    end
  end
end
