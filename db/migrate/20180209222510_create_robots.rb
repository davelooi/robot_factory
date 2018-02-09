class CreateRobots < ActiveRecord::Migration[5.1]
  def change
    create_table :robots do |t|
      t.string :name
      t.boolean :on_fire
      t.boolean :rusty
      t.boolean :loose_screws
      t.boolean :paint_scratched
      t.timestamps
    end
  end
end
