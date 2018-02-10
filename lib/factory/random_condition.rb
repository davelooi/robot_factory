module Factory
  class RandomCondition
    def on_fire
      Randomiser.boolean
    end

    def rusty
      Randomiser.boolean
    end

    def loose_screws
      Randomiser.boolean
    end

    def paint_scratched
      Randomiser.boolean
    end
  end
end
