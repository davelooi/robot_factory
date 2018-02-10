module Factory
  class Randomiser
    def self.boolean
      [true, false].sample
    end

    def self.number
      Random.new.rand(1..10)
    end

    def self.colour
      %w(red green blue).sample
    end
  end
end
