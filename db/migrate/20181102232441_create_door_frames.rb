class CreateDoorFrames < ActiveRecord::Migration[5.2]
  def change
    create_table :door_frames do |t|
      t.string :name
      t.float :value

      t.timestamps
    end
  end
end
