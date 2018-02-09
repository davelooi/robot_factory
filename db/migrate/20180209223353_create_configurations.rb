class CreateConfigurations < ActiveRecord::Migration[5.1]
  def change
    create_table :configurations do |t|
      t.references :robot, foreign_key: true
      t.boolean :has_sentience
      t.boolean :has_wheels
      t.boolean :has_tracks
      t.integer :num_of_rotors
      t.string :colour
      t.timestamps
    end
  end
end
