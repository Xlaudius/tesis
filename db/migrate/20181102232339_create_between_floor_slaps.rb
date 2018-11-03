class CreateBetweenFloorSlaps < ActiveRecord::Migration[5.2]
  def change
    create_table :between_floor_slaps do |t|
      t.string :name
      t.float :value

      t.timestamps
    end
  end
end
