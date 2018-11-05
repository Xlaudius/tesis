class CreatePropertySectors < ActiveRecord::Migration[5.2]
  def change
    create_table :property_sectors do |t|
      t.float :distance
      t.references :property, foreign_key: true
      t.references :sector, foreign_key: true

      t.timestamps
    end
  end
end
