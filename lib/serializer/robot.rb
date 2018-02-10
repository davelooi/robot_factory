module Serializer
  class Robot
    def initialize(robot)
      @robot = robot
    end

    def to_h
      {
        'id' => robot.id,
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
      @configuration ||= robot.configuration
    end

    def statuses
      arr = []
      arr << 'on fire' if robot.on_fire
      arr << 'rusty' if robot.rusty
      arr << 'loose screws' if robot.loose_screws
      arr << 'paint scratched' if robot.paint_scratched
      arr
    end
  end
end
