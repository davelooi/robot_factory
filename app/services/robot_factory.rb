module Services
  class RobotFactory
    class << self
      # returns an array of Robot
      def build_batch(num_of_robots: 10)
        Robot.transaction do
          num_of_robots.times.map do
            Robot.create_with(
              name: name,
              configuration: configuration,
              condition: condition,
            )
          end
        end
      end

      private

      def name
        Faker::Superhero.name
      end

      def configuration
        @configuration ||= Factory::RandomConfiguration.new
      end

      def condition
        @condition ||= Factory::RandomCondition.new
      end
    end
  end
end
