class CreatePropertyRoads < ActiveRecord::Migration[5.2]
  def change
    create_table :property_roads do |t|
      t.references :property, foreign_key: true
      t.references :road, foreign_key: true

      t.timestamps
    end
  end
end
