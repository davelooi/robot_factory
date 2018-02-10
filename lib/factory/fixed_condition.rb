module Factory
  class FixedCondition
    attr_reader :on_fire, :rusty, :loose_screws, :paint_scratched

    def initialize(on_fire:, rusty:, loose_screws:, paint_scratched:)
      @on_fire = on_fire
      @rusty = rusty
      @loose_screws = loose_screws
      @paint_scratched = paint_scratched
    end
  end
end
