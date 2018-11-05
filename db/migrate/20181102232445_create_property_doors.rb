class CreatePropertyDoors < ActiveRecord::Migration[5.2]
  def change
    create_table :property_doors do |t|
      t.references :door, foreign_key: true
      t.references :door_frame, foreign_key: true
      t.references :property, foreign_key: true

      t.timestamps
    end
  end
end
