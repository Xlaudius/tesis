class CreatePropertyDrinkingWaters < ActiveRecord::Migration[5.2]
  def change
    create_table :property_drinking_waters do |t|
      t.references :drinking_water, foreign_key: true
      t.references :property, foreign_key: true

      t.timestamps
    end
  end
end
