require 'repositories/robot'
require 'faker'
require 'factory/randomiser'

module Factory
  class Robot
    class << self
      def build
        configuration = Repositories::Configuration.with(
          has_sentience: Randomiser.boolean,
          has_wheels: Randomiser.boolean,
          has_tracks: Randomiser.boolean,
          num_of_rotors: Randomiser.number(1..10),
          colour: Randomiser.colour,
        )

        condition = Repositories::Condition.with(
          on_fire: Randomiser.boolean,
          rusty: Randomiser.boolean,
          loose_screws: Randomiser.boolean,
          paint_scratched: Randomiser.boolean,
        )

        Repositories::Robot.with(
          name: Faker::Superhero.name,
          condition: condition,
          configuration: configuration,
        )
      end
    end
  end
end
