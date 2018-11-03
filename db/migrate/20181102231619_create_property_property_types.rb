class CreatePropertyPropertyTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :property_property_types do |t|
      t.references :property_type, foreign_key: true
      t.references :property, foreign_key: true
      t.integer :sites

      t.timestamps
    end
  end
end
