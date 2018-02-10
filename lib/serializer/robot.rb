module Serializer
  class Robot
    def initialize(robot)
      @robot = robot
    end

    def to_h
      {
        'name' => robot.name,
        'configuration' => {
          'hasSentience' => configuration.has_sentience,
          'hasWheels' => configuration.has_wheels,
          'hasTracks' => configuration.has_tracks,
          'numberOfRotors' => configuration.num_of_rotors,
          'colour' => configuration.colour,
        },
        'statuses' => statuses,
      }
    end

    private

    attr_reader :robot

    def configuration
      robot.configuration
    end

    def condition
      robot.condition
    end

    def statuses
      arr = []
      arr << 'on fire' if condition.on_fire
      arr << 'rusty' if condition.rusty
      arr << 'loose screws' if condition.loose_screws
      arr << 'paint scratched' if condition.paint_scratched
      arr
    end
  end
end
