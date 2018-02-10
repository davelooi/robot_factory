require 'factory/robot'
require 'factory/randomiser'

module Factory
  class Production
    class << self
      # returns an array of Repositories::Robot
      def build_batch
        batch_number.times.map { Factory::Robot.build }
      end

      private

      def batch_number
        Factory::Randomiser.number(10..1000)
      end
    end
  end
end
