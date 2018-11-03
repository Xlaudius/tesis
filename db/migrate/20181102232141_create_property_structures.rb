class CreatePropertyStructures < ActiveRecord::Migration[5.2]
  def change
    create_table :property_structures do |t|
      t.text :observations
      t.references :property, foreign_key: true
      t.references :structure, foreign_key: true

      t.timestamps
    end
  end
end
