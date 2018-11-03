class CreatePropertyDryWalls < ActiveRecord::Migration[5.2]
  def change
    create_table :property_dry_walls do |t|
      t.references :dry_wall, foreign_key: true
      t.references :property, foreign_key: true
      t.string :other

      t.timestamps
    end
  end
end
