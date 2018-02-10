require 'values'

module Repositories
  class Robot < Value.new(:name, :condition, :configuration)
  end

  class Condition < Value.new(:on_fire, :rusty, :loose_screws, :paint_scratched)
  end

  class Configuration < Value.new(:has_sentience, :has_wheels, :has_tracks, :num_of_rotors, :colour)
  end
end
