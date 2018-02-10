module Factory
  class FixedConfiguration
    attr_reader :has_sentience, :has_wheels, :has_tracks, :num_of_rotors, :colour

    def initialize(has_sentience:, has_wheels:, has_tracks:, num_of_rotors:, colour:)
      @has_sentience = has_sentience
      @has_wheels = has_wheels
      @has_tracks = has_tracks
      @num_of_rotors = num_of_rotors
      @colour = colour
    end
  end
end
