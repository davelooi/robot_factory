class Robot < ApplicationRecord
  has_one :configuration

  def self.create_with(name:, configuration:, condition:)
    self.create(
      name: name,
      on_fire: condition.on_fire,
      rusty: condition.rusty,
      loose_screws: condition.loose_screws,
      paint_scratched: condition.paint_scratched,
      configuration: Configuration.new(
        has_sentience: configuration.has_sentience,
        has_wheels: configuration.has_wheels,
        has_tracks: configuration.has_tracks,
        num_of_rotors: configuration.num_of_rotors,
        colour: configuration.colour,
      )
    )
  end
end
