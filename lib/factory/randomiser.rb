module Factory
  class Randomiser
    def self.boolean
      [true, false].sample
    end

    def self.number(range)
      Random.new.rand(range)
    end

    def self.colour
      %w(red green blue).sample
    end
  end
end
