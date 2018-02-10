require 'rails_helper'

RSpec.describe Serializer::Robot do
  describe '#to_h' do
    let(:robot) do
      Robot.new(
        name: 'BB-8',
        on_fire: true,
        rusty: true,
        loose_screws: true,
        paint_scratched: true,
        configuration: configuration,
      )
    end
    let(:configuration) do
      Configuration.new(
        has_sentience: true,
        has_wheels: true,
        has_tracks: true,
        num_of_rotors: 5,
        colour: 'purple',
      )
    end
    subject(:hash) { Serializer::Robot.new(robot).to_h }

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
