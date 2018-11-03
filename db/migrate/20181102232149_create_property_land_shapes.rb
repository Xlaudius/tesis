class CreatePropertyLandShapes < ActiveRecord::Migration[5.2]
  def change
    create_table :property_land_shapes do |t|
      t.references :property, foreign_key: true
      t.references :land_shape, foreign_key: true

      t.timestamps
    end
  end
end
