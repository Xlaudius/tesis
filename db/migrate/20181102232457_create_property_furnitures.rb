class CreatePropertyFurnitures < ActiveRecord::Migration[5.2]
  def change
    create_table :property_furnitures do |t|
      t.references :furniture, foreign_key: true
      t.references :property, foreign_key: true
      t.references :furniture_cover, foreign_key: true

      t.timestamps
    end
  end
end
