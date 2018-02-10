module Services
  class RobotFactory
    class << self
      # returns an array of Robot
      def build_batch
        Robot.transaction do
          build_robots(random_batch_quantity)
        end
      end

      private

      # a batch can be anywhere from 10 to 1000 robots
      def random_batch_quantity
        Factory::Randomiser.number(10..1000)
      end

      def build_robots(batch_quantity)
        batch_quantity.times.map do
          Robot.create_with(
            name: name,
            configuration: configuration,
            condition: condition,
          )
        end
      end

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
