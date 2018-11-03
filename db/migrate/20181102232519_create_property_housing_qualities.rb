class CreatePropertyHousingQualities < ActiveRecord::Migration[5.2]
  def change
    create_table :property_housing_qualities do |t|
      t.references :housing_quality, foreign_key: true
      t.references :property, foreign_key: true

      t.timestamps
    end
  end
end
