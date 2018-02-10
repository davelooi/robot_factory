module Factory
  class RandomConfiguration
    def has_sentience
      Randomiser.boolean
    end

    def has_wheels
      Randomiser.boolean
    end

    def has_tracks
      Randomiser.boolean
    end

    def num_of_rotors
      Randomiser.number(1..10)
    end

    def colour
      Randomiser.colour
    end
  end
end
