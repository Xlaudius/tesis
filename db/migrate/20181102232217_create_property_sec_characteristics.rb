class CreatePropertySecCharacteristics < ActiveRecord::Migration[5.2]
  def change
    create_table :property_sec_characteristics do |t|
      t.references :property, foreign_key: true
      t.references :sector_characteristic, foreign_key: true

      t.timestamps
    end
  end
end
